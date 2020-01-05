package br.com.pucrio.inf.biobd.outertuning.bib.sgbd;

import br.com.pucrio.inf.biobd.outertuning.bib.sgbd.mysql.Explain;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.function.Function;
import java.util.stream.Collectors;

public class PlanMySQL extends Plan {

    private long cost;
    private long numRow;
    private long rowSize;
    private String html;
    private Timestamp time;
    private ArrayList<SeqScan> seqScanList;


    private Function<Explain.TableInfo, Filter> tableInfoFilterFunction = tableInfo -> {
        Filter filter = new Filter();
        filter.setTable(tableInfo.getTableName());
        filter.setFilterType(tableInfo.getAccessType());
        return filter;
    };


    public PlanMySQL(String plan, Timestamp time) {
        this.time = time;
        Explain explain;
        try {
            explain = new Gson().fromJson(plan, Explain.class);

            this.html = explain.html();
            this.cost = Optional.ofNullable(explain.getQueryBlock()).map(Explain.QueryBlock::getCostInfo).map(Explain.CostInfo::getQueryCost).map(Double::parseDouble).orElse(0D).longValue();
            List<Explain.Table> nestedLoop = Optional.ofNullable(explain.getQueryBlock()).map(Explain.QueryBlock::getNestedLoop).orElse(Collections.emptyList());
            this.numRow = nestedLoop.stream().map(Explain.Table::getTableInfo).mapToInt(Explain.TableInfo::getRowsExaminedPerScan).sum();
            this.rowSize = nestedLoop.stream().map(Explain.Table::getTableInfo).mapToInt(Explain.TableInfo::getRowsProducedPerJoin).sum();
            Function<Explain.TableInfo, SeqScan> tableInfoSeqScanFunction = tableInfo ->
                    new SeqScan(tableInfo.getTableName(), new ArrayList<>(), new Double(tableInfo.getCostInfo().getEvalCost()).longValue());
            this.seqScanList = nestedLoop.stream().map(Explain.Table::getTableInfo).map(tableInfoSeqScanFunction).collect(Collectors.toCollection(ArrayList::new));
        } catch (JsonSyntaxException e) {
            System.err.println(plan);
        }

    }

    @Override
    public long getCost() {
        return this.cost;
    }

    @Override
    public long getNumRow() {
        return this.numRow;
    }

    @Override
    public long getRowSize() {
        return this.rowSize;
    }

    @Override
    public ArrayList<SeqScan> getSeqScanOperations() {
        return this.seqScanList;
    }

    @Override
    public float getDuration() {
        return this.time.getTime();
    }

    @Override
    public String getPlanToViewHtml() {
        return this.html;
    }
}
