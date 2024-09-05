CREATE DATABASE WineGuard;

USE WineGuard;

CREATE TABLE usuario(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    username VARCHAR(50),
    email VARCHAR(50),
    telefone CHAR(11),
    senha VARCHAR(20),
    CPF CHAR(11),
    dtNascimento DATE
);
CREATE TABLE alerta(
	id INT PRIMARY KEY AUTO_INCREMENT,
    dtAlerta DATE,
    tipo_alerta VARCHAR(20),
    status_alerta VARCHAR(20),
    prioridade VARCHAR(20),
    CONSTRAINT chkTipo_Alerta CHECK(tipo_alerta in ('Temperatura', 'Umidade')),
    CONSTRAINT chkStatus CHECK(status_alerta in ('Aberto', 'Resolvido', 'Em Analise')),
    CONSTRAINT chkPrioridade CHECK( prioridade in('Alta', 'Media','Baixa'))
);
CREATE TABLE SensorTemperatura(
	id INT PRIMARY KEY AUTO_INCREMENT,
    localizacao VARCHAR(50),
    dtLeitura DATE,
    temperatura_atual INT
);
CREATE TABLE SensorUmidade(
	id INT PRIMARY KEY AUTO_INCREMENT,
    localizacao VARCHAR(50),
    dtLeitura DATE,
    umidade_atual INT
);

ALTER TABLE sensorTemperatura 
MODIFY COLUMN dtLeitura DATETIME;

ALTER TABLE sensorUmidade
MODIFY COLUMN dtLeitura DATETIME;

ALTER TABLE alerta 
MODIFY COLUMN dtAlerta DATETIME;


INSERT INTO usuario VALUES
	(DEFAULT,'Ana Silva', 'ana.silva', 'ana.silva@example.com', '11987654321', 'senha1234', '12345678901', '1990-05-14'),
	(DEFAULT,'Carlos Souza', 'carlos.souza', 'carlos.souza@example.com', '21987654321', 'senha2345', '23456789012', '1985-11-22'),
	(DEFAULT,'Mariana Oliveira', 'mariana.oliveira', 'mariana.oliveira@example.com', '31987654321', 'senha3456', '34567890123', '1992-07-30'),
	(DEFAULT,'Pedro Lima', 'pedro.lima', 'pedro.lima@example.com', '41987654321', 'senha4567', '45678901234', '1988-02-12'),
	(DEFAULT,'Juliana Santos', 'juliana.santos', 'juliana.santos@example.com', '51987654321', 'senha5678', '56789012345', '1995-12-05'),
	(DEFAULT,'Roberto Ferreira', 'roberto.ferreira', 'roberto.ferreira@example.com', '61987654321', 'senha6789', '67890123456', '1980-09-18'),
	(DEFAULT,'Fernanda Costa', 'fernanda.costa', 'fernanda.costa@example.com', '71987654321', 'senha7890', '78901234567', '1993-04-28'),
	(DEFAULT,'Ricardo Almeida', 'ricardo.almeida', 'ricardo.almeida@example.com', '81987654321', 'senha8901', '89012345678', '1987-06-10'),
	(DEFAULT,'Patrícia Martins', 'patricia.martins', 'patricia.martins@example.com', '91987654321', 'senha9012', '90123456789', '1991-01-15'),
	(DEFAULT,'Gabriel Silva', 'gabriel.silva', 'gabriel.silva@example.com', '02987654321', 'senha0123', '01234567890', '1996-10-25')
;

INSERT INTO alerta VALUES 
	(DEFAULT, '2024-09-01 08:30:00', 'Temperatura', 'Aberto', 'Alta'),
	(DEFAULT, '2024-09-02 09:15:00', 'Umidade', 'Resolvido', 'Média'),
	(DEFAULT, '2024-09-03 10:00:00', 'Temperatura', 'Em Analise', 'Baixa'),
	(DEFAULT, '2024-09-04 11:45:00', 'Umidade', 'Aberto', 'Alta'),
	(DEFAULT, '2024-09-05 12:30:00', 'Temperatura', 'Resolvido', 'Média'),
	(DEFAULT, '2024-09-06 13:15:00', 'Umidade', 'Em Analise', 'Baixa'),
	(DEFAULT, '2024-09-07 14:00:00', 'Temperatura', 'Aberto', 'Alta'),
	(DEFAULT, '2024-09-08 15:30:00', 'Umidade', 'Resolvido', 'Média'),
	(DEFAULT, '2024-09-09 16:45:00', 'Temperatura', 'Em Analise', 'Baixa'),
	(DEFAULT, '2024-09-10 17:00:00', 'Umidade', 'Aberto', 'Alta')
;

INSERT INTO sensorTemperatura VALUES
	(DEFAULT, 'Sala 1', '2024-09-01 08:30:00', 15),
	(DEFAULT, 'Sala 2', '2024-09-01 09:00:00', 12),
	(DEFAULT, 'Sala 3', '2024-09-01 10:00:00', 21),
	(DEFAULT, 'Sala 4', '2024-09-01 11:00:00', 22),
	(DEFAULT, 'Sala 5', '2024-09-01 12:00:00', 6),
	(DEFAULT, 'Sala 6', '2024-09-01 13:00:00', 24),
	(DEFAULT, 'Sala 7', '2024-09-01 14:00:00', 32),
	(DEFAULT, 'Sala 8', '2024-09-01 15:00:00', 23),
	(DEFAULT, 'Sala 9', '2024-09-01 16:00:00', 21),
	(DEFAULT, 'Sala 10', '2024-09-01 17:00:00', 22)
;

INSERT INTO sensorUmidade VALUES
	(DEFAULT, 'Sala 1', '2024-09-01 08:30:00', 95),
	(DEFAULT, 'Sala 2', '2024-09-01 09:00:00', 86),
	(DEFAULT, 'Sala 3', '2024-09-01 10:00:00', 74),
	(DEFAULT, 'Sala 4', '2024-09-01 11:00:00', 75),
	(DEFAULT, 'Sala 5', '2024-09-01 12:00:00', 67),
	(DEFAULT, 'Sala 6', '2024-09-01 13:00:00', 58),
	(DEFAULT, 'Sala 7', '2024-09-01 14:00:00', 56),
	(DEFAULT, 'Sala 8', '2024-09-01 15:00:00', 57),
	(DEFAULT, 'Sala 9', '2024-09-01 16:00:00', 65),
	(DEFAULT, 'Sala 10', '2024-09-01 17:00:00', 76)
;

SELECT * FROM usuario;

SELECT * FROM usuario
ORDER BY dtNascimento;

SELECT * FROM usuario
WHERE telefone LIKE '11%';

SELECT nome as 'Nome', username as 'Nome de login', dtNascimento as 'Data Nascimento' FROM usuario;

SELECT * FROM alerta;

SELECT * FROM alerta
ORDER BY dtAlerta desc;

SELECT * FROM alerta 
WHERE prioridade = 'Alta';

SELECT * FROM alerta 
WHERE tipo_alerta = 'umidade';









