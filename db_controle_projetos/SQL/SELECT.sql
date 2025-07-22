USE EmpresaTI;

SELECT p.idProjeto, p.tipoProjeto, CONCAT_WS(' ', c.nome, c.sobrenome) AS nomeCliente
FROM Projetos p
JOIN Clientes c ON p.idCliente = c.idCliente;
/*  1	Sistema Web	Caio Scarpim
	2	Aplicativo Mobile	Eduardo Silva
*/

SELECT t.idProjeto, t.descricao, t.status_tarefa, CONCAT(f.nome, ' ' , f.sobrenome) AS Funcionario
FROM Tarefas t
JOIN Funcionarios f ON t.idFuncionario = f.idFuncionario;
/* 	1	null		Concluída	Gustavo Almeida
	1	criação de API	concluída	Ana Silva
*/

SELECT status_projeto, COUNT(*) AS Contagem
FROM Projetos
GROUP BY status_projeto;

SELECT idProjeto, tipoProjeto, valorOrcado
FROM Projetos
WHERE status_projeto = 'cancelado'