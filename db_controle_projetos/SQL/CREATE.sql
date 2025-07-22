CREATE DATABASE EmpresaTI;
USE EmpresaTI;

CREATE TABLE Clientes ( -- CRIANDO TABELA CLIENTES
	idCliente INT PRIMARY KEY AUTO_INCREMENT, -- A COLUNA idCliente É A CHAVE PRIMARIA E AUTO INCREMENTADA AUTOMATICAMENTE
    nome VARCHAR(30) NOT NULL,
    sobrenome VARCHAR(60) NOT NULL,
    telefone VARCHAR(20) NOT NULL, -- NOT NULL para exigir que seja inserido valores em todas as colunas
    email VARCHAR(50) NOT NULL,
    cidade VARCHAR(45) NOT NULL,
    estado VARCHAR(45)NOT NULL
);

CREATE TABLE Projetos ( -- TABELA PROJETOS
	idProjeto INT PRIMARY KEY AUTO_INCREMENT, -- CHAVE PRIMÁRIA
    idCliente INT,
    tipoProjeto VARCHAR(50) NOT NULL,
    dataInicio DATE NOT NULL,
    dataFimPrevista DATE NOT NULL,
    dataEntrega DATE,
    status_projeto VARCHAR(15) NOT NULL,
    valorOrcado DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente) -- CHAVE ESTRANGEIRA (FOREIGN KEY)
);

CREATE TABLE Funcionarios ( -- TABELA FUNCIONÁRIOS
	idFuncionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    sobrenome VARCHAR(60) NOT NULL,
    cargo VARCHAR(30) NOT NULL,
    email VARCHAR(50) NOT NULL,
    telefone VARCHAR(20) NOT NULL
);

CREATE TABLE feedbackCliente ( -- TABELA FEEDBACK DOS CLIENTES
	idfeedback INT PRIMARY KEY AUTO_INCREMENT,
    idProjeto INT,
    nota INT NOT NULL,
    comentario VARCHAR(80),
    recomendaria BOOLEAN, -- TIPO DE DADO BOOLEAN (0 - Não, 1 - Sim)
    FOREIGN KEY (idProjeto) REFERENCES Projetos(idProjeto) 
);

CREATE TABLE Tarefas( -- TABELA TAREFAS
	idTarefa INT PRIMARY KEY AUTO_INCREMENT,
    idProjeto INT,
    descricao VARCHAR(50),
    idFuncionario INT,
    dataInicio DATE NOT NULL,
    dataFimPrevista DATE,
    dataConclusao DATE NOT NULL,
    status_tarefa VARCHAR(15) NOT NULL,
    FOREIGN KEY (idProjeto) REFERENCES Projetos(idProjeto), -- DUAS CHAVES ESTRANGEIRAS, POIS SE RELACIONA COM AS TABELAS PROJETOS E FUNCIONARIOS
    FOREIGN KEY (idFuncionario) REFERENCES Funcionarios(idFuncionario)
);