# Análise de Atrito e Desempenho de Funcionários - HR Analytics

<div align="center">
  <img src="C:\Users\fonce\OneDrive\Ambiente de Trabalho\Imagens\IBM_HR_Analytics_Visualizacao_dashboard_1.png" alt="Dashboard HR Analytics" style="border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); max-width: 100%;" />
  
  <p>
    <img src="https://img.shields.io/badge/Status-Concluído-success?style=for-the-badge" alt="Status: Concluído" />
    <img src="https://img.shields.io/badge/Licença-Educacional-blue?style=for-the-badge" alt="Licença: Educacional" />
    <img src="https://img.shields.io/badge/Versão-1.0-informational?style=for-the-badge" alt="Versão: 1.0" />
  </p>
</div>

## Índice

- [Sobre o Projeto](#-sobre-o-projeto)
- [Objetivos](#-objetivos)
- [Principais Insights](#-principais-insights)
- [Estrutura do Projeto](#-estrutura-do-projeto)
- [Metodologia](#-metodologia)
- [Análises Realizadas](#-análises-realizadas)
- [Visualizações e Dashboards](#-visualizações-e-dashboards)
- [Documentos do Projeto](#-documentos-do-projeto)
- [Tecnologias Utilizadas](#-tecnologias-utilizadas)
- [Estrutura de Diretórios](#-estrutura-de-diretórios)
- [Como Utilizar](#-como-utilizar)
- [Conclusões Principais](#-conclusões-principais)
- [Licença](#-licença)

## Sobre o Projeto

Este projeto de HR Analytics tem como objetivo analisar os fatores que influenciam a rotatividade (atrito) e o desempenho dos funcionários numa organização. Utilizando técnicas de análise de dados, modelação estatística e visualização, procuramos identificar padrões e insights que possam auxiliar na tomada de decisões estratégicas de recursos humanos.

## Objetivos

- Identificar os principais fatores que contribuem para o atrito de funcionários
- Analisar o desempenho dos colaboradores em diferentes departamentos
- Criar modelos preditivos para antecipar possíveis saídas de talentos
- Fornecer recomendações baseadas em dados para melhorar a retenção de talentos
- Desenvolver dashboards interativos para monitorização contínua de métricas de RH

## Principais Insights

<div style="display: flex; justify-content: space-around; flex-wrap: wrap; margin: 20px 0;">
  <div style="flex: 0 0 30%; background-color: #f0f7ff; padding: 15px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); margin-bottom: 20px; text-align: center;">
    <h3>Fatores de Atrito</h3>
    <p>Horas extraordinárias aumentam em <b>3x</b> a probabilidade de saída</p>
  </div>
  <div style="flex: 0 0 30%; background-color: #fff0f0; padding: 15px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); margin-bottom: 20px; text-align: center;">
    <h3>Departamentos</h3>
    <p>Vendas e TI apresentam <b>25%</b> mais rotatividade que outros departamentos</p>
  </div>
  <div style="flex: 0 0 30%; background-color: #f0fff0; padding: 15px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); margin-bottom: 20px; text-align: center;">
    <h3>Tempo na Empresa</h3>
    <p>Funcionários sem promoção após <b>2 anos</b> têm maior risco de saída</p>
  </div>
</div>

## 📋 Estrutura do Projeto

### Dados

O projeto utiliza um conjunto de dados de RH com informações sobre:

- Dados demográficos dos funcionários
- Histórico de desempenho
- Satisfação no trabalho
- Tempo na empresa
- Departamentos e funções
- Compensação e benefícios

### Modelação de Dados

<details>
<summary><b>Modelo OLTP (Transacional)</b></summary>
<div align="center">
  <img src="C:\Users\fonce\OneDrive\Ambiente de Trabalho\Imagens\IBM_HR_Analytics_OLTP_diagrama.png" alt="Diagrama OLTP" style="border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); max-width: 100%;" />
</div>
</details>

<details>
<summary><b>Modelo OLAP (Analítico)</b></summary>
<div align="center">
  <img src="C:\Users\fonce\OneDrive\Ambiente de Trabalho\Imagens\IBM_HR_Analytics_OLAP_diagrama.png" alt="Diagrama OLAP" style="border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); max-width: 100%;" />
</div>
</details>

<details>
<summary><b>Dicionário de Dados</b></summary>
<div align="center">
  <img src="C:\Users\fonce\OneDrive\Ambiente de Trabalho\Imagens\IBM_HR_Analytics_Dicionário_Dados.png" alt="Dicionário de Dados" style="border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); max-width: 100%;" />
</div>
</details>

## Metodologia

<div style="background-color: #f9f9f9; padding: 20px; border-radius: 10px; margin: 20px 0;">
  <p>Este projeto seguiu uma metodologia estruturada de análise de dados para recursos humanos:</p>
  
  <ol>
    <li><strong>Recolha e Preparação de Dados</strong>: Extração de dados de RH de múltiplas fontes, limpeza e normalização</li>
    <li><strong>Análise Exploratória</strong>: Identificação de padrões, correlações e outliers nos dados</li>
    <li><strong>Modelação Estatística</strong>: Aplicação de técnicas de regressão e classificação para identificar fatores de atrito</li>
    <li><strong>Visualização</strong>: Criação de dashboards interativos para comunicar resultados</li>
    <li><strong>Recomendações</strong>: Desenvolvimento de estratégias baseadas em dados para reduzir o atrito</li>
  </ol>
  
  <p>A análise foi realizada utilizando SQL para consultas complexas, R para análise estatística avançada e Power BI para visualizações interativas.</p>
</div>

## Análises Realizadas

### Consultas SQL

<div align="center" style="margin-bottom: 30px;">
  <h4>Consulta 1</h4>
  <img src="C:\Users\fonce\OneDrive\Ambiente de Trabalho\Imagens\IBM_HR_Analytics_Script_SQL_consulta_1.png" alt="Consulta SQL 1" style="border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); max-width: 100%;" />
</div>

<div align="center" style="margin-bottom: 30px;">
  <h4>Consulta 2</h4>
  <img src="C:\Users\fonce\OneDrive\Ambiente de Trabalho\Imagens\IBM_HR_Analytics_Script_SQL_consulta_2.png" alt="Consulta SQL 2" style="border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); max-width: 100%;" />
</div>

### Joins e Análises Relacionais

<details>
<summary><b>Análise por Departamento</b></summary>
<div align="center">
  <img src="Imagens/C:\Users\fonce\OneDrive\Ambiente de Trabalho\Imagens\IBM_HR_Analytics_Script_SQL_joins_departamento.png" alt="Joins Departamento" style="border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); max-width: 100%;" />
</div>
</details>

<details>
<summary><b>Análise de Informações Pessoais</b></summary>
<div align="center">
  <img src="C:\Users\fonce\OneDrive\Ambiente de Trabalho\Imagens\IBM_HR_Analytics_Script_SQL_joins_personalinfo.png" alt="Joins Informações Pessoais" style="border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); max-width: 100%;" />
</div>
</details>

### Transformação de Dados

<div align="center">
  <img src="C:\Users\fonce\OneDrive\Ambiente de Trabalho\Imagens\IBM_HR_Analytics_Dados_apos_transformacoes.png" alt="Dados Após Transformações" style="border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); max-width: 100%;" />
</div>

## Visualizações e Dashboards

<div align="center" style="margin-bottom: 30px;">
  <h3>Dashboard Principal</h3>
  <img src="C:\Users\fonce\OneDrive\Ambiente de Trabalho\Imagens\IBM_HR_Analytics_Visualizacao_dashboard_1.png" alt="Dashboard 1" style="border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); max-width: 100%;" />
</div>

<div align="center" style="margin-bottom: 30px;">
  <h3>Dashboard de Métricas Detalhadas</h3>
  <img src="C:\Users\fonce\OneDrive\Ambiente de Trabalho\Imagens\IBM_HR_Analytics_Visualizacao_dashboard_2.png" alt="Dashboard 2" style="border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); max-width: 100%;" />
</div>

## Documentos do Projeto

<div style="display: flex; justify-content: space-around; flex-wrap: wrap; margin: 30px 0;">
  <div style="flex: 0 0 45%; background-color: #f8f9fa; padding: 20px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); margin-bottom: 20px;">
    <h3 align="center">Apresentação PowerPoint</h3>
    <div align="center">
      <div style="display: flex; justify-content: center; gap: 10px; flex-wrap: wrap;">
        <a href="C:\Users\fonce\OneDrive\Ambiente de Trabalho\Documentos Entrega\CA_AiDAPT_Apresentacao.pptx" target="_blank" style="display: inline-block; background-color: #DC3545; color: white; padding: 8px 16px; text-align: center; text-decoration: none; border-radius: 5px; margin: 5px;">
          <b>Ver PDF Completo</b>
        </a>
        <a href="C:\Users\fonce\OneDrive\Ambiente de Trabalho\Documentos Entrega\CA_AiDAPT_Apresentacao.pptx" download style="display: inline-block; background-color: #B7472A; color: white; padding: 8px 16px; text-align: center; text-decoration: none; border-radius: 5px; margin: 5px;">
          <b>Descarregar PPT</b>
        </a>
      </div>
    </div>
  </div>
  
  <div style="flex: 0 0 45%; background-color: #f8f9fa; padding: 20px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); margin-bottom: 20px;">
    <h3 align="center">Relatório de Análise em R</h3>
    <div align="center">
      <p>Análise estatística avançada incluindo exploração de dados, testes de hipóteses, modelação preditiva e visualizações.</p>
      <a href="C:\Users\fonce\OneDrive\Ambiente de Trabalho\Documentos Entrega\Analise_em_R.pdf" target="_blank" style="display: inline-block; background-color: #276DC3; color: white; padding: 10px 20px; text-align: center; text-decoration: none; border-radius: 5px; margin: 10px 0;">
        <b>Ver Relatório Completo</b>
      </a>
    </div>
  </div>
</div>

## 🛠️ Tecnologias Utilizadas

<div style="display: flex; justify-content: space-around; flex-wrap: wrap; margin: 20px 0;">
  <div style="text-align: center; margin: 10px;">
    <a href="https://www.microsoft.com/sql-server" target="_blank" rel="noopener noreferrer">
      <img src="https://img.shields.io/badge/SQL%20Server-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white" alt="SQL Server" />
    </a>
    <p>Armazenamento de Dados</p>
  </div>
  <div style="text-align: center; margin: 10px;">
    <a href="https://www.mongodb.com/" target="_blank" rel="noopener noreferrer">
      <img src="https://img.shields.io/badge/MongoDB-4EA94B?style=for-the-badge&logo=mongodb&logoColor=white" alt="MongoDB" />
    </a>
    <p>Armazenamento NoSQL</p>
  </div>
  <div style="text-align: center; margin: 10px;">
    <a href="https://www.r-project.org/" target="_blank" rel="noopener noreferrer">
      <img src="https://img.shields.io/badge/R-276DC3?style=for-the-badge&logo=r&logoColor=white" alt="R" />
    </a>
    <p>Análise Estatística</p>
  </div>
  <div style="text-align: center; margin: 10px;">
    <a href="https://powerbi.microsoft.com/" target="_blank" rel="noopener noreferrer">
      <img src="https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge&logo=power-bi&logoColor=black" alt="Power BI" />
    </a>
    <p>Visualização de Dados</p>
  </div>
</div>

## Estrutura de Diretórios

```
📦 HR-Analytics-Project
 ┣ 📂 Código
 ┃ ┣ 📜 CA_AiDAPT01_P1_MongoDB.docx
 ┃ ┣ 📜 CA_AiDAPT01_P1_Script_Original_Projeto.sql
 ┃ ┣ 📜 CA_AiDAPT01_P1_Scripts_MongoDB.txt
 ┃ ┗ 📜 CA_AiDAPT01_P1_report _corr.Rmd
 ┣ 📂 Dados
 ┃ ┣ 📜 CA_AiDAPT_Dicionario_de_dados.xlsx
 ┃ ┗ 📜 CA_AiDAPT_Normalizacao_Final.xlsx
 ┣ 📂 Documentação
 ┃ ┣ 📜 CA_AiDAPT01_P1_Analise_em_R.pdf
 ┃ ┣ 📜 CA_AiDAPT01_P1_Apresentacao_Final.pdf
 ┃ ┣ 📜 CA_AiDAPT01_P1_Apresentacao_Final.pptx
 ┃ ┗ 📜 CA_AiDAPT01_P1_ibm_hr_data.csv
 ┣ 📂 Imagens
 ┃ ┣ 📜 CA_AiDAPT01_P1_Dados_Apos_Transformacoes.png
 ┃ ┣ 📜 CA_AiDAPT01_P1_Dicionario_Dados.png
 ┃ ┣ 📜 CA_AiDAPT01_P1_OLAP_Diagrama.png
 ┃ ┣ 📜 CA_AiDAPT01_P1_OLTP_Diagrama.png
 ┃ ┣ 📜 CA_AiDAPT01_P1_Script_SQL_Consulta_1.png
 ┃ ┣ 📜 CA_AiDAPT01_P1_Script_SQL_Consulta_2.png
 ┃ ┣ 📜 CA_AiDAPT01_P1_Script_SQL_Joins_Pepartamento.png
 ┃ ┣ 📜 CA_AiDAPT01_P1_Script_SQL_Joins_Personalinfo.png
 ┃ ┣ 📜 CA_AiDAPT01_P1_Visualizacao_Dashboard_1.png
 ┃ ┣ 📜 CA_AiDAPT01_P1_Visualizacao_Dashboard_2.png
 ┃ ┗ 📜 CA_AiDAPT01_P1_script4_SQL._joins_Rotatividadepng.png
 ┗ 📂 Visualizações
   ┗ 📜 CA_AiDAPT01_P1_Power_BI.pbix
```

## Conclusões Principais

<div style="background-color: #f0f7ff; padding: 15px; border-radius: 8px; margin: 20px 0;">
  <ul>
    <li>Identificámos que fatores como distância de casa, horas extraordinárias e satisfação no trabalho são determinantes para o atrito de funcionários</li>
    <li>Departamentos com maior rotatividade: Vendas e TI</li>
    <li>Funcionários com mais de 2 anos na empresa e sem promoção recente apresentam maior risco de saída</li>
    <li>Implementação de programas de reconhecimento e planos de carreira claros podem reduzir significativamente o atrito</li>
  </ul>
</div>
