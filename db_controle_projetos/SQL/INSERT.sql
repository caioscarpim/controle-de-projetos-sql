 USE empresati;

INSERT INTO Clientes (nome, sobrenome, telefone, email, cidade, estado)
VALUES 
('Caio', 'Scarpim', '(43) 99112-3456', 'caio@gmail.com', 'São Paulo', 'São Paulo'),
('Eduardo', 'Silva', '41 123456789', 'silva.eduardo@hotmail.com', 'Londrina', 'Paraná');

INSERT INTO Projetos (idCliente, tipoProjeto, dataInicio, dataFimPrevista, dataEntrega, status_projeto, valorOrcado)
VALUES 
(1, 'Sistema Web', '2025-07-01', '2025-07-13' , '2025-07-15', 'Entregue', 2000.00),
(2, 'Aplicativo Mobile', '2025-07-19', '2025-08-19', NULL, 'Planejado', 5500.00);

INSERT INTO Funcionarios (nome, sobrenome, cargo, email, telefone)
VALUES
('Gustavo', 'Almeida', 'Desenvolvedor Web', 'gustavo@empresa.com', '(41) 123456789'),
('Ana', 'Silva', 'Desenvolvedora Backend', 'ana@empresa.com', '(11)123456789'),
('João', 'Pereira', 'Gerente de Projetos', 'joao@empresa.com', '51 123456789');

INSERT INTO Tarefas (idProjeto, descricao, idFuncionario, dataInicio, dataFimPrevista, dataConclusao, status_tarefa)
VALUES 
(1, null , 1, '2025-07-05', null, '2025-07-11', 'Concluída'),
(1, 'criação de API', 2, '2025-07-05', '2025-07-13', '2025-07-13', 'concluída');

INSERT INTO feedbackCliente (idProjeto, nota, comentario, recomendaria)
VALUES 
(1, 5, 'Projeto muito bem desenvolvido, houve atraso, porém fui avisado com antecedência', 1);