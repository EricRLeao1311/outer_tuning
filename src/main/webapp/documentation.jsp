<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="br.com.pucrio.inf.biobd.outertuning.bib.configuration.Configuration"%>
<%@page import="br.com.pucrio.inf.biobd.outertuning.bib.sgbd.ActionSF"%>
<%@page import="br.com.pucrio.inf.biobd.outertuning.bib.sgbd.Plan"%>
<%@page import="br.com.pucrio.inf.biobd.outertuning.bib.base.Interval"%>
<%@page import="br.com.pucrio.inf.biobd.outertuning.bib.sgbd.SQL"%>
<%@page import="java.util.Locale"%>
<%@page import="java.text.DecimalFormatSymbols"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.concurrent.CopyOnWriteArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.math.RoundingMode"%>

<!-- === BEGIN HEADER === -->
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
    <head>
        <!-- Title -->
        <title>OT - Documentation</title>
        <!-- Meta -->

        <meta charset="UTF-8">
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
        <link href="favicon.html" rel="shortcut icon">
        <link rel="stylesheet" href="assets/css/bootstrap.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/animate.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/font-awesome.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/nexus.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/responsive.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/custom.css" rel="stylesheet">
        <!-- Google Fonts-->
        <link href="http://fonts.googleapis.com/css?family=Lato:400,300" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" rel="stylesheet" type="text/css">

    </head>
    <body>
        <jsp:include page="helpers/header.jsp"/>
        <!-- === BEGIN CONTENT === -->
        <div id="content" class="container">
            <div class="row" style="text-align: left; margin-top: 20px;">
                <h1 class="text-center">Documentação da Ferramenta Outer-Tuning</h1>
                <hr>

                <h2>Regras da Ontologia</h2>

                <h3>Regra do Índice Simples (Simple Index Rule)</h3>
                <p>A sugestão para um índice simples é gerada para cada coluna referenciada na cláusula <code>WHERE</code> de uma consulta SQL. Esse tipo de índice visa acelerar a recuperação de registros onde condições simples são aplicadas em uma única coluna.</p>
                <p><strong>Passos para a inferência:</strong></p>
                <ol>
                    <li><strong>Verificação da Cláusula WHERE:</strong> A regra começa verificando se a consulta possui uma cláusula <code>WHERE</code>.</li>
                    <li><strong>Coluna Referenciada:</strong> Seleciona cada coluna que está sendo referenciada na cláusula <code>WHERE</code>. Por exemplo, se a consulta possui <code>WHERE C_MKTSEGMENT = 'BUILDING'</code>, a coluna <code>C_MKTSEGMENT</code> é identificada.</li>
                    <li><strong>Verificação de Índice Existente:</strong> Em seguida, a regra verifica se a coluna já possui um índice físico. Caso já exista, a regra não sugere nada adicional.</li>
                    <li><strong>Sugestão de Índice:</strong> Se a coluna não possui índice, a regra sugere um índice hipotético simples. Esse índice é nomeado seguindo o padrão <code>HYP_</code> seguido pelo nome da coluna, como <code>HYP_C_MKTSEGMENT</code>.</li>
                </ol>

                <h3>Regra do Índice Composto (Composite Index Rule)</h3>
                <p>O índice composto é sugerido quando duas ou mais colunas de uma mesma tabela aparecem juntas em uma cláusula <code>WHERE</code>. Esse tipo de índice é útil para consultas que aplicam filtros em múltiplas colunas, pois um índice composto pode cobrir múltiplas colunas e otimizar a recuperação de dados de maneira mais eficiente do que múltiplos índices simples.</p>
                <p><strong>Passos para a inferência:</strong></p>
                <ol>
                    <li><strong>Identificação de Colunas na Cláusula WHERE:</strong> A regra verifica se há um par de colunas na cláusula <code>WHERE</code> da mesma tabela.</li>
                    <li><strong>Verificação de Índice Existente:</strong> Para cada par de colunas, verifica se já existe um índice composto cobrindo ambas as colunas. Isso envolve verificar a ordem das colunas, pois a ordem pode afetar a performance do índice.</li>
                    <li><strong>Sugestão de Índice:</strong> Se o par de colunas não possui um índice composto existente, a regra sugere a criação de um índice composto. A nomenclatura para um índice composto segue o padrão <code>HYP_</code> seguido pelo nome das duas colunas separadas por um <code>_</code>, por exemplo, <code>HYP_CUSTKEY_MKTSEGMENT</code>.</li>
                </ol>

                <h3>Regra do Índice Parcial (Partial Index Rule)</h3>
                <p>Um índice parcial é sugerido quando uma cláusula <code>WHERE</code> inclui uma expressão que aplica condições a um subconjunto específico de registros, filtrados por uma expressão condicional (como uma comparação com valores específicos).</p>
                <p><strong>Passos para a inferência:</strong></p>
                <ol>
                    <li><strong>Verificação da Cláusula WHERE com Condição Específica:</strong> A regra começa verificando se existe uma expressão atômica na cláusula <code>WHERE</code> que contenha um literal (um valor específico). Por exemplo, <code>WHERE C_MKTSEGMENT = 'BUILDING'</code> é uma condição com um literal (<code>'BUILDING'</code>).</li>
                    <li><strong>Sugestão de Índice Parcial:</strong> A partir dessa condição específica, a regra sugere um índice parcial que cobre apenas as tuplas que atendem à condição, tornando o índice eficiente para cenários onde apenas parte dos dados é necessário. No exemplo, o índice seria aplicado apenas para registros onde <code>C_MKTSEGMENT</code> é igual a <code>'BUILDING'</code>.</li>
                </ol>

                <h3>Regra da Visão Materializada (Materialized View Rule)</h3>
                <p>A visão materializada é sugerida para otimizar o desempenho de consultas complexas que envolvem agregações e operações repetitivas que beneficiam-se do armazenamento dos resultados. Visões materializadas armazenam fisicamente os dados da consulta, evitando o processamento repetitivo.</p>
                <p><strong>Passos para a inferência:</strong></p>
                <ol>
                    <li><strong>Verificação das Cláusulas WHERE e GROUP BY:</strong> A regra identifica consultas com cláusulas <code>WHERE</code> e <code>GROUP BY</code>, que normalmente indicam a necessidade de agregação e agrupamento de dados.</li>
                    <li><strong>Cláusulas HAVING e Literais em WHERE:</strong> Se a consulta inclui uma cláusula <code>HAVING</code> (para filtros após a agregação) e expressões com literais na cláusula <code>WHERE</code>, a regra captura essas colunas e condições para configurar a visão.</li>
                    <li><strong>Sugestão de Visão Materializada:</strong> A regra então sugere a criação de uma visão materializada que armazena o resultado da consulta para acelerar futuras execuções. Isso é especialmente benéfico para consultas que são executadas repetidamente e cujas condições não mudam frequentemente.</li>
                </ol>

                <hr>
                <h2>Uso da Ferramenta</h2>

                <h3>1. Aba Workload</h3>
                <p>A aba <strong>Workload</strong> é usada para monitorar e visualizar as consultas SQL em execução no banco de dados e analisar seu comportamento ao longo do tempo.</p>
                <p><strong>Funcionalidades:</strong></p>
                <ul>
                    <li><strong>Intervalo de Monitoramento:</strong> Permite ao usuário selecionar o intervalo de tempo para visualizar a execução das consultas, como 1 minuto, 5 minutos, 10 minutos, etc. Isso permite ajustar a granularidade da análise.</li>
                    <li><strong>Gráfico de Execuções:</strong> Exibe um gráfico com as consultas executadas, representando o tempo médio e o custo de cada execução. Cada consulta é representada por uma cor diferente para facilitar a identificação.</li>
                    <li><strong>Detalhes das Consultas:</strong> Ao selecionar uma consulta específica na lista abaixo do gráfico, o usuário pode ver:
                        <ul>
                            <li>O SQL completo da consulta.</li>
                            <li>Vezes que a consulta foi executada no intervalo selecionado.</li>
                            <li>Tempo médio de execução e custo da consulta.</li>
                        </ul>
                    </li>
                </ul>
                <p>Essa aba é fundamental para identificar quais consultas têm impacto no desempenho e para analisar quais podem ser otimizadas com sugestões de tuning.</p>

                <h3>2. Aba Tuning Actions</h3>
                <p>Na aba <strong>Tuning Actions</strong>, o usuário encontra as sugestões de ações de tuning geradas pela ferramenta. Essas sugestões são baseadas na análise do workload e incluem recomendações para criação de índices simples, compostos, parciais e visões materializadas.</p>
                <p><strong>Funcionalidades:</strong></p>
                <ul>
                    <li><strong>Lista de Ações de Tuning:</strong> Exibe uma lista de ações sugeridas, que podem incluir:
                        <ul>
                            <li>Índices hipotéticos simples para otimizar consultas com condições <code>WHERE</code> em uma coluna.</li>
                            <li>Índices compostos para consultas que utilizam mais de uma coluna na cláusula <code>WHERE</code>.</li>
                            <li>Índices parciais para otimizar condições específicas aplicadas a subconjuntos dos dados.</li>
                            <li>Visões materializadas para consultas que envolvem agregações e são executadas com frequência.</li>
                        </ul>
                    </li>
                    <li><strong>Detalhes da Sugestão:</strong> Ao selecionar uma ação de tuning, o usuário pode ver:
                        <ul>
                            <li>A heurística que gerou a sugestão.</li>
                            <li>Tipo de ação (por exemplo, <code>RuleHypCompositeIndex</code> para um índice composto).</li>
                            <li>Custo estimado de criação e execução.</li>
                            <li>Bônus acumulado, que indica a relevância da ação com base nas consultas beneficiadas.</li>
                            <li>Comando SQL sugerido para aplicar a ação de tuning.</li>
                        </ul>
                    </li>
                    <li><strong>Visualização:</strong> Nessa aba é possível ver um gráfico de bolhas, em que o eixo y representa o custo para criar a ação, o eixo x representa o ganho real da ação, e o tamanho da bolha representa o ganho esperado da ação. Quanto maior a bolha, mais ela é utilizada no contexto das tabelas que se tenta melhorar.</li>
                </ul>
                <p>A aba Tuning Actions ajuda o usuário a avaliar e priorizar ações de otimização que podem reduzir o custo e o tempo de execução das consultas.</p>

                <h3>3. Aba Documentation</h3>
                <p>A aba <strong>Documentation</strong> fornece acesso à documentação completa da ferramenta Outer-Tuning, incluindo guias e explicações detalhadas sobre cada funcionalidade e as heurísticas usadas para gerar sugestões de tuning.</p>
                <p><strong>Funcionalidades:</strong></p>
                <ul>
                    <li><strong>Guias de Uso:</strong> Inclui instruções sobre como configurar o banco de dados, carregar o workload e interpretar as sugestões de tuning.</li>
                    <li><strong>Explicação das Heurísticas:</strong> Descreve as regras e heurísticas que guiam as recomendações de tuning, ajudando o usuário a entender a lógica por trás das sugestões.</li>
                    <li><strong>Explicações Detalhadas sobre Cada Aba:</strong> Fornece detalhes sobre o que cada aba faz e como o usuário pode utilizá-las para obter o máximo da ferramenta.</li>
                </ul>

                <h3>4. Aba Stop Process</h3>
                <p>A aba <strong>Stop Process</strong> permite ao usuário interromper o monitoramento e a coleta de dados. Retorna imediatamente para a aba inicial onde é possível configurar o banco.</p>
            </div>
        </div>
        <!-- === END CONTENT === -->
        <!-- === BEGIN FOOTER === -->
        <jsp:include page="helpers/foot.jsp"/>
    </body>
</html>
