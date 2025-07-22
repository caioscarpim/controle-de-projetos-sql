# Projeto de Banco de Dados: Controle de Projetos

## 🎯 Objetivo
Simular um sistema interno usado por empresas de desenvolvimento de software para controlar:
- Projetos
- Funcionários
- Tarefas
- Feedbacks

## 🧱 Modelagem
O banco foi modelado a partir do DER visual criado no MySQL Workbench, considerando relacionamentos chave para refletir a realidade de uma empresa.

👉 Ver imagem em `/DER/imagem_diagrama.png`

## 🛠️ Estrutura
Tabelas criadas:
- Funcionarios (idFuncionario, nome, sobrenome, cargo, email, telefone);
- Clientes (idCliente, nome, sobrenome, telefone, email, cidade, estado);
- Projetos (idProjeto, idCliente, tipoProjeto, dataInicio, dataFimPrevista, dataEntrega, status_projeto, valorOrcado);
- Tarefas (idTarefa, idProjeto, descricao, idFuncionario, dataInicio, dataFimPrevista, dataConclusao, status_tarefa);
- FeedbackCliente (idFeedback, idProjeto, nota, comentario, recomendaria);

## 🧾 Scripts SQL
Os scripts completos estão em `/SQL`, contendo:
- Criação do banco `/SQL/CREATE.sql`
- Todas as tabelas com chaves primárias e estrangeiras
- Tipos de dados pensados conforme o uso
- Inserção de valores para teste `/SQL/INSERT.sql`
- Select para verificar o funcionamento e possíveis análises `/SQL/SELECT.sql`

## 🧠 Aprendizados
✔️ Modelagem relacional a partir de cenários reais  
✔️ Criação de banco de dados com comandos SQL puros  
✔️ Aplicação de boas práticas em chaves e relacionamentos  
✔️ Organização de scripts e visualização de resultados
