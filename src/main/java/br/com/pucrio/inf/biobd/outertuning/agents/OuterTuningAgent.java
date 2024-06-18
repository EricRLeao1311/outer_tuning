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
                this.addRealisticTestActions(); // Adicionando várias ações de teste realista
                // this.executeDispatcher();
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
    
            // Ação 1: Índice para CUSTOMER(C_NATIONKEY)
            ActionSF action1 = new ActionSF();
            action1.setId("1");
            action1.setName("Index on CUSTOMER(C_NATIONKEY)");
            action1.setHeuristic("Index");
            action1.setCommand("CREATE INDEX idx_customer_nationkey ON CUSTOMER(C_NATIONKEY);");
            action1.setBonus(8.0f);
            action1.setCreationCost(4.0f);
            action1.setCost(1.0f);
            action1.setType("Index");
            action1.setStatus("created");
            action1.setJustify("Index to speed up nation key lookups in CUSTOMER.");
            testActions.add(action1);
    {
            // Ação 2: Índice para ORDERS(O_ORDERDATE)
            ActionSF action2 = new ActionSF();
            action2.setId("2");
            action2.setName("Index on ORDERS(O_ORDERDATE)");
            action2.setHeuristic("Index");
            action2.setCommand("CREATE INDEX idx_orders_orderdate ON ORDERS(O_ORDERDATE);");
            action2.setBonus(7.5f);
            action2.setCreationCost(3.5f);
            action2.setCost(1.2f);
            action2.setType("Index");
            action2.setStatus("created");
            action2.setJustify("Index to speed up order date lookups in ORDERS.");
            testActions.add(action2);
    
            // Ação 3: Índice para LINEITEM(L_RETURNFLAG)
            ActionSF action3 = new ActionSF();
            action3.setId("3");
            action3.setName("Index on LINEITEM(L_RETURNFLAG)");
            action3.setHeuristic("Index");
            action3.setCommand("CREATE INDEX idx_lineitem_returnflag ON LINEITEM(L_RETURNFLAG);");
            action3.setBonus(6.0f);
            action3.setCreationCost(3.0f);
            action3.setCost(1.1f);
            action3.setType("Index");
            action3.setStatus("created");
            action3.setJustify("Index to speed up return flag lookups in LINEITEM.");
            testActions.add(action3);
    
            // Ação 4: Índice para PART(P_SIZE, P_TYPE)
            ActionSF action4 = new ActionSF();
            action4.setId("4");
            action4.setName("Index on PART(P_SIZE, P_TYPE)");
            action4.setHeuristic("Index");
            action4.setCommand("CREATE INDEX idx_part_size_type ON PART(P_SIZE, P_TYPE);");
            action4.setBonus(9.0f);
            action4.setCreationCost(4.5f);
            action4.setCost(1.5f);
            action4.setType("Index");
            action4.setStatus("created");
            action4.setJustify("Index to speed up size and type lookups in PART.");
            testActions.add(action4);
    
            // Ação 5: Visão Materializada para CUSTOMER, ORDERS, e LINEITEM
            ActionSF action5 = new ActionSF();
            action5.setId("5");
            action5.setName("Materialized View for CUSTOMER, ORDERS, and LINEITEM");
            action5.setHeuristic("Materialized View");
            action5.setCommand("CREATE MATERIALIZED VIEW mv_customer_orders_lineitem AS " +
                    "SELECT C.C_CUSTKEY, C.C_NAME, O.O_ORDERKEY, L.L_EXTENDEDPRICE, L.L_DISCOUNT, O.O_ORDERDATE " +
                    "FROM CUSTOMER C " +
                    "JOIN ORDERS O ON C.C_CUSTKEY = O.O_CUSTKEY " +
                    "JOIN LINEITEM L ON O.O_ORDERKEY = L.L_ORDERKEY;");
            action5.setBonus(20.0f);
            action5.setCreationCost(15.0f);
            action5.setCost(7.0f);
            action5.setType("Materialized View");
            action5.setStatus("created");
            action5.setJustify("Materialized view to optimize join operations among CUSTOMER, ORDERS, and LINEITEM.");
            testActions.add(action5);
    
            // Ação 6: Índice para SUPPLIER(S_NATIONKEY)
            ActionSF action6 = new ActionSF();
            action6.setId("6");
            action6.setName("Index on SUPPLIER(S_NATIONKEY)");
            action6.setHeuristic("Index");
            action6.setCommand("CREATE INDEX idx_supplier_nationkey ON SUPPLIER(S_NATIONKEY);");
            action6.setBonus(5.5f);
            action6.setCreationCost(2.5f);
            action6.setCost(1.0f);
            action6.setType("Index");
            action6.setStatus("created");
            action6.setJustify("Index to speed up nation key lookups in SUPPLIER.");
            testActions.add(action6);
    
            // Ação 7: Índice para PARTSUPP(PS_PARTKEY, PS_SUPPKEY)
            ActionSF action7 = new ActionSF();
            action7.setId("7");
            action7.setName("Index on PARTSUPP(PS_PARTKEY, PS_SUPPKEY)");
            action7.setHeuristic("Index");
            action7.setCommand("CREATE INDEX idx_partsupp_partkey_suppkey ON PARTSUPP(PS_PARTKEY, PS_SUPPKEY);");
            action7.setBonus(10.0f);
            action7.setCreationCost(5.0f);
            action7.setCost(2.0f);
            action7.setType("Index");
            action7.setStatus("created");
            action7.setJustify("Index to speed up join operations between PARTSUPP and other tables.");
            testActions.add(action7);
    
            // Ação 8: Visão Materializada para LINEITEM e ORDERS
            ActionSF action8 = new ActionSF();
            action8.setId("8");
            action8.setName("Materialized View for LINEITEM and ORDERS");
            action8.setHeuristic("Materialized View");
            action8.setCommand("CREATE MATERIALIZED VIEW mv_lineitem_orders AS " +
                    "SELECT L.L_ORDERKEY, SUM(L.L_EXTENDEDPRICE * (1 - L.L_DISCOUNT)) AS REVENUE, O.O_ORDERDATE " +
                    "FROM LINEITEM L " +
                    "JOIN ORDERS O ON L.L_ORDERKEY = O.O_ORDERKEY " +
                    "GROUP BY L.L_ORDERKEY, O.O_ORDERDATE;");
            action8.setBonus(18.0f);
            action8.setCreationCost(14.0f);
            action8.setCost(6.5f);
            action8.setType("Materialized View");
            action8.setStatus("created");
            action8.setJustify("Materialized view to optimize aggregation and join operations between LINEITEM and ORDERS.");
            testActions.add(action8);
    
            // Ação 9: Índice para LINEITEM(L_SHIPDATE)
            ActionSF action9 = new ActionSF();
            action9.setId("9");
            action9.setName("Index on LINEITEM(L_SHIPDATE)");
            action9.setHeuristic("Index");
            action9.setCommand("CREATE INDEX idx_lineitem_shipdate ON LINEITEM(L_SHIPDATE);");
            action9.setBonus(8.5f);
            action9.setCreationCost(4.0f);
            action9.setCost(1.3f);
            action9.setType("Index");
            action9.setStatus("created");
            action9.setJustify("Index to speed up ship date lookups in LINEITEM.");
            testActions.add(action9);
    }
            // Ação 10: Visão Materializada para SUPPLIER, LINEITEM, e NATION
            ActionSF action10 = new ActionSF();
            action10.setId("10");
            action10.setName("Materialized View for SUPPLIER, LINEITEM, and NATION");
            action10.setHeuristic("Materialized View");
            action10.setCommand("CREATE MATERIALIZED VIEW mv_supplier_lineitem_nation AS " +
                    "SELECT S.S_NAME, S.S_ADDRESS, L.L_QUANTITY, N.N_NAME " +
                    "FROM SUPPLIER S " +
                    "JOIN LINEITEM L ON S.S_SUPPKEY = L.L_SUPPKEY " +
                    "JOIN NATION N ON S.S_NATIONKEY = N.NATIONKEY;");
            action10.setBonus(22.0f);
            action10.setCreationCost(16.0f);
            action10.setCost(8.0f);
            action10.setType("Materialized View");
            action10.setStatus("created");
            action10.setJustify("Materialized view to optimize join operations between SUPPLIER, LINEITEM, and NATION.");
            testActions.add(action10);
    
            for (ActionSF action : testActions) {
                log.msg("Adicionando ação de teste realista: " + action.getName());
                this.actionsSF.add(action);
            }
    
            log.msg("Ações de teste realista adicionadas com sucesso.");
        } catch (Exception e) {
            log.error("Erro ao criar as ações de teste realista: " + e.getMessage());
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
