/*
 * Outer-Tuning - Framework para apoiar a sintonia fina de banco de dados. PUC-RIO.
 * Rafael Pereira de Oliveira [rpoliveira@inf.puc-rio.br].
 * Ana Carolina Almeida [anacrl@gmail.com].
 * Sergio Lifschitz [sergio@inf.puc-rio.br].
 * PUC-RIO - BioBD.
 */
package br.com.pucrio.inf.biobd.outertuning.agents;

import br.com.pucrio.inf.biobd.outertuning.bib.base.Interval;
import br.com.pucrio.inf.biobd.outertuning.bib.base.IntervalList;
import br.com.pucrio.inf.biobd.outertuning.bib.configuration.Configuration;
import br.com.pucrio.inf.biobd.outertuning.bib.ontology.Heuristic;
import br.com.pucrio.inf.biobd.outertuning.bib.sgbd.ActionSF;
import br.com.pucrio.inf.biobd.outertuning.bib.sgbd.Plan;
import br.com.pucrio.inf.biobd.outertuning.bib.sgbd.SQL;

import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;

/**
 * @author Rafael
 */
public class CoordenatorAgent {

    private final CopyOnWriteArrayList<SQL> lastSQLCaptured;
    private Thread threadAgentTuning;
    public OuterTuningAgent OTAgent;
    public boolean running = false;

    public CoordenatorAgent(Configuration configuration) {
        this.lastSQLCaptured = new CopyOnWriteArrayList<>();
        this.OTAgent = new OuterTuningAgent(configuration);
    }

    public void startCaptureWorkload() {
        this.OTAgent.initialize(lastSQLCaptured);
        if (this.threadAgentTuning == null) {
            this.threadAgentTuning = new Thread(OTAgent);
            this.threadAgentTuning.start();
            this.running = true;
        }
    }

    public String capturedQueryByWindow(String windowSize) {
        StringBuilder dataLine = new StringBuilder();
        ArrayList<SQL> sqlIn = new ArrayList<>();
        IntervalList list = new IntervalList();
        ArrayList<Interval> inter = list.getIntervals(windowSize);
        float duration;
        float cost;
        int count;
        for (int i = inter.size() - 1; i >= 0; i--) {
            dataLine.append(",\n['").append(inter.get(i).getIni(this.getMaskByWindowSize(windowSize))).append("'");

            for (SQL sql : lastSQLCaptured) {
                duration = 0;
                cost = 0;
                count = 0;
                for (Plan execution : sql.getExecutions()) {
                    if (inter.get(i).isBetween(execution.getDateExecution()) && execution.getDuration() > 0) {
                        if (!sqlIn.contains(sql)) {
                            sqlIn.add(sql);
                        }
                        duration += execution.getDuration();
                        cost += execution.getCost();
                        count++;
                    }
                }
                if (count == 0) {
                    dataLine.append(",0");
                } else {
                    dataLine.append(",").append(duration);
                }
                dataLine.append(",'<b>SQL #").append(sql.getId()).append("</b><br>  ");
                dataLine.append("Execution(s): <b>").append(count).append("</b><br>");
                dataLine.append("Total Time: <b>").append(formatDecimalIDE(duration)).append("s</b><br> ");
                dataLine.append("Total cost: <b>").append(formatDecimalIDE(cost)).append("</b>'");
            }
            dataLine.append("]");
        }

        StringBuilder firstLine = new StringBuilder("['TIME'");
        for (SQL sql : lastSQLCaptured) {
            firstLine.append(",'SQL #").append(sql.getId()).append("'");
            firstLine.append(",{type: 'string', role: 'tooltip', 'p': {'html': true}}");
        }

        if (sqlIn.isEmpty()) {
            dataLine = new StringBuilder();
            firstLine = new StringBuilder("['TIME'");
            firstLine.append(",'empty'");
            for (int i = inter.size() - 1; i >= 0; i--) {
                dataLine.append(",\n['").append(inter.get(i).getIni(this.getMaskByWindowSize(windowSize))).append("',0]");
            }
        }
        firstLine.append("]");
        return firstLine.toString() + dataLine;
    }

    public ArrayList<SQL> getSQLbyId(int id) {
        ArrayList<SQL> sqlIn = new ArrayList<>();
        if (this.lastSQLCaptured.size() >= id) {
            sqlIn.add(this.lastSQLCaptured.get(id - 1));
        }
        return sqlIn;
    }

    public ArrayList<SQL> getSQLbyWindow(String windowSize, String windowSelected) {
        ArrayList<SQL> sqlIn = new ArrayList<>();
        Interval intervalSelected = this.getIntervalAsked(windowSize, windowSelected);
        for (SQL sql : lastSQLCaptured) {
            for (Plan execution : sql.getExecutions()) {
                if (intervalSelected != null && intervalSelected.isBetween(execution.getDateExecution()) && execution.getDuration() > 0) {
                    if (!sqlIn.contains(sql)) {
                        sqlIn.add(sql);
                    }
                }
            }
        }
        return sqlIn;
    }

    public Interval getIntervalAsked(String windowSize, String windowSelected) {
        Interval intervalSelected = null;
        IntervalList list = new IntervalList();
        ArrayList<Interval> inter = list.getIntervals(windowSize);
        for (Interval interval : inter) {
            if (interval.getIni(this.getMaskByDate(windowSelected)).equals(windowSelected)) {
                intervalSelected = interval;
                break;
            }
        }
        return intervalSelected;
    }

    private String getMaskByDate(String windowSelected) {
        if (windowSelected.contains("/")) {
            return "dd/MM HH:mm";
        } else {
            return "HH:mm";
        }
    }

    private String getMaskByWindowSize(String windowSize) {
        if (windowSize.contains("h")) {
            return "dd/MM HH:mm";
        } else {
            return "HH:mm";
        }
    }

    public ArrayList<Heuristic> getHeuristicsFromOntology() {
        return this.OTAgent.getAllHeuristics();
    }

    public void setSelectedHeuristics(Heuristic heuristics) {
        this.OTAgent.selectedHeuristics.add(heuristics);
    }

    public CopyOnWriteArrayList<Heuristic> getSelectedHeuristics() {
        return this.OTAgent.selectedHeuristics;
    }

    public String formatDecimalIDE(double number) {
        DecimalFormat formatter = new DecimalFormat("###,###.##", new DecimalFormatSymbols(new Locale("pt", "BR")));
        return formatter.format(number);
    }

    public ActionSF getActionSFById(String actionID) {
        for (SQL sql : lastSQLCaptured) {
            for (ActionSF actionSF : sql.getActionsSF()) {
                if (actionSF.getId().equals(actionID)) {
                    return actionSF;
                }
            }
        }
        return null;
    }

    public String getActionsFromChart() {
        ArrayList<String> result = new ArrayList<>();
        for (SQL sql : lastSQLCaptured) {
            for (ActionSF actionSF : sql.getActionsSF()) {
                String actionTemp = "['" + actionSF.getId() + "', " + actionSF.getBonus() + ", " + actionSF.getCreationCost() + ", '" + actionSF.getType() + "', " + actionSF.getSql().size() + "]";
                if (!result.contains(actionTemp)) {
                    result.add(actionTemp);
                }
            }
        }
        StringBuilder toChart = new StringBuilder();
        for (int i = 0; i < result.size(); i++) {
            toChart.append(result.get(i));
            if (i < (result.size() - 1)) {
                toChart.append(",");
            }
        }
        if (toChart.length() > 0)
            toChart.insert(0, "['ACTION_ID', 'Gain Expectancy', 'Creation Cost', 'Type', 'N. of SQL Serviced'], ");
        return toChart.toString();
    }

    public boolean isRunning() {
        return this.running;
    }
}
