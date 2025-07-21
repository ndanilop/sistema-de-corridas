# Sistema de Transporte de Passageiros - Banco de Dados Relacional

Este repositório contém o projeto de banco de dados relacional para um sistema de transporte de passageiros, desenvolvido como parte da disciplina **Princípios de Bancos de Dados (TCC00334)** da **Universidade Federal Fluminense (UFF)**. O sistema é projetado para gerenciar corridas intermunicipais, envolvendo motoristas autônomos, passageiros, atendentes e veículos.

## 📌 Visão Geral

O projeto abrange as seguintes etapas:
1. **Modelagem Conceitual**: Diagrama Entidade-Relacionamento (DER) para representar as entidades e seus relacionamentos.
2. **Modelagem Lógica**: Mapeamento do DER para o modelo relacional, com definição de tabelas, chaves primárias e estrangeiras.
3. **Normalização**: Aplicação das formas normais (1FN, 2FN e 3FN) para eliminar redundâncias e garantir a integridade dos dados.
4. **Implementação**: Scripts SQL para criação, povoamento e consulta do banco de dados.

## 📂 Estrutura do Repositório
/seu-projeto-de-banco-de-dados/
|-- /sql/
|   |-- ddl_final.sql
|   |-- dml_final.sql
|   |-- dql_final.sql
|-- /docs/
|   |-- relatorio_sistema_corridas.pdf.pdf
|   |-- ProjetoFinalDeDisciplina-2.pdf
|   |-- DER.png (Imagem do Diagrama Entidade-Relacionamento)
|-- .gitignore
|-- README.md


## 📊 Diagrama Entidade-Relacionamento (DER)
O DER representa as entidades principais do sistema:
- **Pessoas**: Generalização para Motoristas, Passageiros e Atendentes.
- **Veículos**: Associados a motoristas e seguradoras.
- **Corridas**: Vinculadas a passageiros, motoristas e atendentes.
- **Atendimentos**: Relacionamento entre corridas e atendentes, com perguntas e respostas.

![DER](/docs/DER.png)

## 🛠️ Scripts SQL
- **DDL (Data Definition Language)**: Criação das tabelas e definição de constraints.
- **DML (Data Manipulation Language)**: Inserção de dados fictícios para teste.
- **DQL (Data Query Language)**: Consultas para responder aos requisitos do trabalho.

## 🔍 Consultas Implementadas
As consultas atendem aos requisitos especificados, incluindo:
1. Listagem de veículos por seguradora.
2. Verificação de uso do serviço por atendentes.
3. Passageiros que nunca fizeram corridas.
4. Contagem de corridas como passageiro principal ou caronista.
5. Perguntas e respostas por corrida.
6. Percentual pago por passageiros em corridas compartilhadas.
7. Estatísticas de participação em corridas.
8. Consultas adicionais relevantes.

## 📝 Considerações Finais
O projeto demonstra a aplicação prática dos conceitos de modelagem e normalização de bancos de dados, resultando em um esquema relacional eficiente e sem redundâncias. Os scripts SQL garantem a implementação funcional do sistema no SGBD PostgreSQL.

## 📧 Contato
- **Autores**: Danilo Pinto Nascimento e Wesley Ribeiro Felix da Silva.
- **Disciplina**: Princípios de Bancos de Dados - UFF (2025/1).
