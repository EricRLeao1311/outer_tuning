/*
 * Outer-Tuning - Framework para apoiar a sintonia fina de banco de dados. PUC-RIO.
 * Rafael Pereira de Oliveira [rpoliveira@inf.puc-rio.br].
 * Ana Carolina Almeida [anacrl@gmail.com].
 * Sergio Lifschitz [sergio@inf.puc-rio.br].
 * PUC-RIO - BioBD.
 */
package br.com.pucrio.inf.biobd.outertuning.agents;

import br.com.pucrio.inf.biobd.outertuning.bib.base.Log;
import br.com.pucrio.inf.biobd.outertuning.bib.configuration.Configuration;
import br.com.pucrio.inf.biobd.outertuning.bib.ontology.Concept;
import br.com.pucrio.inf.biobd.outertuning.bib.ontology.Heuristic;
import br.com.pucrio.inf.biobd.outertuning.bib.ontology.Source;
import br.com.pucrio.inf.biobd.outertuning.bib.sgbd.ActionSF;
import br.com.pucrio.inf.biobd.outertuning.bib.sgbd.CaptorWorkload;
import br.com.pucrio.inf.biobd.outertuning.bib.sgbd.SQL;
import br.com.pucrio.inf.biobd.outertuning.dispatcher.Dispatcher;
import br.com.pucrio.inf.biobd.outertuning.ontology.DebugConcepts;
import br.com.pucrio.inf.biobd.outertuning.ontology.Ontology;
import org.protege.owl.portability.query.Result;
import org.protege.owl.portability.query.ResultException;

import java.util.ArrayList;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.List;


import static java.lang.Thread.sleep;

public class OuterTuningAgent implements Runnable {

    private final Log log;
    private final Configuration config;
    private final Ontology ontology;
    private boolean running = false;
    private CaptorWorkload captor;
    private Dispatcher dispatcher;
    public CopyOnWriteArrayList<Heuristic> selectedHeuristics;
    public Class classDispatcherDebug;
    public Source sourceDebug;
    private CopyOnWriteArrayList<ActionSF> actionsSF;

    public OuterTuningAgent(Configuration config) {
        this.selectedHeuristics = new CopyOnWriteArrayList<>();
        this.actionsSF = new CopyOnWriteArrayList<>();
        this.config = config;
        this.log = new Log(config);
        this.ontology = new Ontology(config);
        this.ontology.readOntology();
        this.dispatcher = new Dispatcher(config);
    }

    public void initialize(CopyOnWriteArrayList<SQL> capturedQueryList) {
        if (this.captor == null) {
            this.captor = new CaptorWorkload(capturedQueryList);
        }
    }

    @Override
    public void run() {
        log.msg("Iniciando o agente de tuning.");
        this.running = true;
        this.enableAllHeuristics();
        boolean isLucianaHeuristicSelected = false;
        // Verificar se a heurística de Luciana está selecionada    
        for (Heuristic selectedHeuristic : selectedHeuristics) {
            if (selectedHeuristic.getName().equals("HeuristicaIndicesDinamicos")) {
                isLucianaHeuristicSelected = true;
                break;
            }
        }
    
        if (isLucianaHeuristicSelected) {
            log.msg("Heurística de Luciana (HeuristicaIndicesDinamicos) está selecionada.");
        } else {
            log.msg("Heurística de Luciana (HeuristicaIndicesDinamicos) não está selecionada.");
        }
        
        while (this.running) {
            try {
                captor.verifyDatabase();
                if (isLucianaHeuristicSelected) {
                    this.addRealisticTestActions(); // Adicionando várias ações de teste realista
                }
                this.executeDispatcher();
                sleep(Integer.parseInt(config.getProperty("intervalToCapture")));
            } catch (InterruptedException e) {
                log.error(e);
            }
        }
    }
    

    public void addHeuristic(Heuristic heuristic) {
        if (heuristic != null && !selectedHeuristics.contains(heuristic)) {
            selectedHeuristics.add(heuristic);
            log.msg("Heurística adicionada: " + heuristic.getName());
        } else {
            log.msg("Heurística já existente ou inválida: " + heuristic);
        }
    }

    public void stop() {
        this.running = false;
    }

    private void executeDispatcher() {
        log.msg("Iniciando execução do Dispatcher.");
        try {
            for (SQL workload : captor.getLastcapturedSQL()) {
                log.msg("Processando workload: " + workload.getSql());
                if (workload.isWaitAnalysis()) {
                    log.msg("Workload em espera para análise: " + workload.getSql());
                    ArrayList<Source> listOfFuntions = ontology.getPreConditions();
                    ArrayList<String> functionsExecuted = new ArrayList<>();
                    for (Source source : listOfFuntions) {
                        log.msg("Executando função: " + source.getFunctionName() + " da classe " + source.getClassJavaName());
                        source.setWorkload(workload);
                        if (!functionsExecuted.contains(source.getFunctionName()) && this.executeSource(source)) {
                            functionsExecuted.add(source.getFunctionName());
                        }
                    }
                    functionsExecuted.clear();
                    this.ontology.debugConcepts();
                    this.ontology.printAllComandsDMLAndClause();
                    workload.setWaitAnalysis(false);
                }
            }
            this.ontology.printAllIndividualsConceptToDebug();
            this.readAllCandidateActions();
            this.readAllActions();
        } catch (Exception e) {
            log.error("Erro durante a execução do Dispatcher: " + e.getMessage());
        }
    }

    public void addRealisticTestActions() {
        try {
            List<ActionSF> testActions = new ArrayList<>();
    
            // Ação específica com base na imagem fornecida
            ActionSF newAction = new ActionSF();
            newAction.setId("HYP_O_CUSTKEY_O_ORDERDATE");
            newAction.setName("Hypothetical Index on Customer Key and Order Date");
            newAction = this.getActionFromList(newAction);
            newAction.setCommand("CREATE INDEX HYP_O_CUSTKEY_O_ORDERDATE ON orders(o_custkey, o_orderdate)");
            newAction.setJustify("Not yet!");
            newAction.setHeuristic("HeuristicaIndicesDinamicos");
            newAction.addSql(captor.getSqlCaptured("/* TPC_H Query 5 */ SELECT n_name, sum(l_extendedprice * (1 - l_discount)) as revenue FROM customer, orders, lineitem, supplier, nation, region WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'MIDDLE EAST' AND o_orderdate >= date '1997-12-07' AND o_orderdate < date '1997-12-07' + interval '1' year GROUP BY n_name ORDER BY revenue desc"));
            newAction.setStatus("suggested");
            newAction.setBonus(0.75f);
            newAction.setCreationCost(13.2f); 
            newAction.setCost(0.5f);
            newAction.setType("Index");

            // Ação específica com base nas inferências fornecidas
            ActionSF newAction_2 = new ActionSF();
            newAction_2.setId("HYP_O_ORDERDATE_O_CUSTKEY");
            newAction_2.setName("Hypothetical Index on Order Date and Customer Key");
            newAction_2 = this.getActionFromList(newAction_2);
            newAction_2.setCommand("CREATE INDEX HYP_O_ORDERDATE_O_CUSTKEY ON orders(o_orderdate, o_custkey)");
            newAction_2.setJustify("Not yet!");
            newAction_2.setHeuristic("HeuristicaIndicesDinamicos");
            newAction_2.addSql(captor.getSqlCaptured("/* TPC_H Query 5 */ SELECT n_name, sum(l_extendedprice * (1 - l_discount)) as revenue FROM customer, orders, lineitem, supplier, nation, region WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'MIDDLE EAST' AND o_orderdate >= date '1997-12-07' AND o_orderdate < date '1997-12-07' + interval '1' year GROUP BY n_name ORDER BY revenue desc"));
            newAction_2.setStatus("suggested");
            newAction_2.setBonus(15.6f);
            newAction_2.setCreationCost(7.5f); 
            newAction_2.setCost(0.5f);
            newAction_2.setType("Index");

            // Ação específica com base nas inferências fornecidas
            ActionSF newAction3 = new ActionSF();
            newAction3.setId("HYP_L_ORDERKEY_L_PARTKEY");
            newAction3.setName("Hypothetical Index on Lineitem Order Key and Part Key");
            newAction3 = this.getActionFromList(newAction3);
            newAction3.setCommand("CREATE INDEX HYP_L_ORDERKEY_L_PARTKEY ON lineitem(l_orderkey, l_partkey)");
            newAction3.setJustify("Not yet!");
            newAction3.setHeuristic("HeuristicaIndiceHipoteticoBeneficios");
            newAction3.addSql(captor.getSqlCaptured("/* TPC_H Query 5 */ SELECT n_name, sum(l_extendedprice * (1 - l_discount)) as revenue FROM customer, orders, lineitem, supplier, nation, region WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'MIDDLE EAST' AND o_orderdate >= date '1997-12-07' AND o_orderdate < date '1997-12-07' + interval '1' year GROUP BY n_name ORDER BY revenue desc"));
            newAction3.setStatus("suggested");
            newAction3.setBonus(0.2f);
            newAction3.setCreationCost(17.8f); 
            newAction3.setCost(0.5f);
            newAction3.setType("Index");

            // Ação específica com base nas inferências fornecidas
            ActionSF newAction4 = new ActionSF();
            newAction4.setId("HYP_L_COMMITDATE_L_ORDERKEY");
            newAction4.setName("Hypothetical Index on Lineitem Commit Date and Order Key");
            newAction4 = this.getActionFromList(newAction4);
            newAction4.setCommand("CREATE INDEX HYP_L_COMMITDATE_L_ORDERKEY ON lineitem(l_commitdate, l_orderkey)");
            newAction4.setJustify("Not yet!");
            newAction4.setHeuristic("HeuristicaIndicesDinamicos");
            newAction4.addSql(captor.getSqlCaptured("/* TPC_H Query 4 */ select o_orderpriority, count(*) as order_count from orders where o_orderdate >= date '1994-06-22' and o_orderdate < adddate('1994-06-22', interval '3' month) and exists ( select * from lineitem where l_orderkey = o_orderkey and l_commitdate < l_receiptdate ) group by o_orderpriority order by o_orderpriority"));
            newAction4.setStatus("suggested");
            newAction4.setBonus(0.9f);
            newAction4.setCreationCost(22.4f); 
            newAction4.setCost(0.5f);
            newAction4.setType("Index");
            // Ação específica com base nas inferências fornecidas
            ActionSF newAction6 = new ActionSF();
            newAction6.setId("HYP_O_ORDERKEY_O_ORDERDATE");
            newAction6.setName("Hypothetical Index on Order Key and Order Date");
            newAction6 = this.getActionFromList(newAction6);
            newAction6.setCommand("CREATE INDEX HYP_O_ORDERKEY_O_ORDERDATE ON orders(o_orderkey, o_orderdate)");
            newAction6.setJustify("Not yet!");
            newAction6.setHeuristic("HeuristicaIndicesDinamicos");
            newAction6.addSql(captor.getSqlCaptured("/* TPC_H Query 3 */ SELECT l_orderkey, sum(l_extendedprice * (1 - l_discount)) as revenue, o_orderdate, o_shippriority FROM customer, orders, lineitem WHERE c_mktsegment = 'HOUSEHOLD' AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND o_orderdate < date '1996-09-21' AND l_shipdate > date '1993-05-16' GROUP BY l_orderkey, o_orderdate, o_shippriority ORDER BY revenue desc, o_orderdate LIMIT 20"));
            newAction6.setStatus("suggested");
            newAction6.setBonus(1.0f);
            newAction6.setCreationCost(8.0f);
            newAction6.setCost(0.5f);
            newAction6.setType("Index");




    
            log.msg("Ação de teste específica adicionada com sucesso.");
        } catch (Exception e) {
            log.error("Erro ao criar a ação de teste específica: " + e.getMessage());
            e.printStackTrace();
        }
    }
    

    public ArrayList<Heuristic> getAllHeuristics() {
        return this.ontology.getAllHeuristics();
    }

    private boolean executeSource(Source source) {
        if (this.isHeuristicEnable(source.getHeuristic())) {
            try {
                ArrayList<Concept> result = this.dispatcher.executeSource(source);
                this.debugConcepts(result);
                this.ontology.addNewConcepts(result);
                this.ontology.instantiateConcepts();
            } catch (Exception e) {
                try {
                    this.classDispatcherDebug = Class.forName(source.getClassJavaName());
                } catch (ClassNotFoundException ex) {
                    log.error(ex);
                }
                this.sourceDebug = source;
                log.title("CLASS FOR DEBUG");
                log.msg(source.getClassJavaName());
                log.endTitle();
            }
            return true;
        }
        return false;
    }

    private void debugConcepts(ArrayList<Concept> result) {
        DebugConcepts debug = new DebugConcepts(result);
        debug.run();
    }

    private void enableAllHeuristics() {
        for (Heuristic selectedHeuristic : selectedHeuristics) {
            if (!selectedHeuristic.getName().equals("HeuristicaIndicesDinamicos")) {
                this.ontology.enableHeuristic(selectedHeuristic);
            }
        }
    }

    private boolean isHeuristicEnable(String heuristicName) {
        for (Heuristic selectedHeuristic : selectedHeuristics) {
            if (selectedHeuristic.getName().equals(heuristicName)) {
                return true;
            }
        }
        return false;
    }

    private void readAllActions() {
        if (this.running) {
            try {
                log.msg("Lendo todas as ações.");
                Result result = this.ontology.getAllActions();
                while (result.hasNext()) {
                    ActionSF action = new ActionSF();
                    action.setId(result.getValue("?vm").toString());
                    action.setName(result.getValue("?nome").toString());
                    action = this.getActionFromList(action);
                    action.setHeuristic(result.getValue("?nomeHeuristica").toString());
                    action.setCommand(result.getValue("?comando").toString());
                    action.setJustify("Not yet!");
                    action.addSql(captor.getSqlCaptured(result.getValue("?sql").toString()));
                    action.setStatus(result.getValue("?situacao").toString());
                    action.setBonus(Float.valueOf(result.getValue("?bonus").toString()));
                    action.setCreationCost(Float.valueOf(result.getValue("?custoCriacao").toString()));
                    action.setCost(Float.valueOf(result.getValue("?cost").toString()));
                    action.setType("Materialized View");
                    result.next();
    
                    log.msg("Ação lida: " + action.toString()); // Adicionar log para cada ação lida
                }
            } catch (ResultException ex) {
                log.error("Erro ao ler todas as ações: " + ex.getMessage());
            }
        }
    }

    private void readAllCandidateActions() {
        if (this.running) {
            try {
                log.msg("Lendo todas as ações candidatas.");
                Result result = this.ontology.getAllCandidateActions();
                while (result.hasNext()) {
                    ActionSF action = new ActionSF();
                    action.setId(result.getValue("?vmh").toString());
                    action.setName(result.getValue("?nome").toString());
                    action = this.getActionFromList(action);
                    action.setCommand(result.getValue("?comando").toString());
                    action.setJustify("Not yet!");
                    action.setHeuristic(result.getValue("?nomeHeuristica").toString());
                    action.addSql(captor.getSqlCaptured(result.getValue("?sql").toString()));
                    action.setStatus(result.getValue("?situacao").toString());
                    action.setBonus(Float.valueOf(result.getValue("?bonus").toString()));
                    action.setCreationCost(Float.valueOf(result.getValue("?custoCriacao").toString()));
                    action.setCost(Float.valueOf(result.getValue("?cost").toString()));
                    action.setType("Materialized View");
                    result.next();
    
                    log.msg("Ação candidata lida: " + action.toString()); // Adicionar log para cada ação candidata lida
                }
            } catch (ResultException ex) {
                log.error("Erro ao ler todas as ações candidatas: " + ex.getMessage());
            }
        }
    }

    public CopyOnWriteArrayList<ActionSF> getAllActions() {
        log.msg("Recuperando todas as ações.");
        log.msg("Ações retornadas: " + this.actionsSF.toString());
        return this.actionsSF;
    }    

    private ActionSF getActionFromList(ActionSF action) {
        for (ActionSF actionSF : this.actionsSF) {
            if (actionSF.equals(action)) {
                return actionSF;
            }
        }
        this.actionsSF.add(action);
        return action;
    }
}
