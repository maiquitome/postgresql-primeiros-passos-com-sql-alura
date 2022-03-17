CREATE DATABASE alura
	WITH
	OWNER = postgres
	ENCODING = 'UTF8'
	CONNECTION LIMIT = -1;
	

CREATE TABLE aluno(
	id SERIAL,
	nome VARCHAR(255),
	cpf CHAR(11), -- se não tiver 11, completa com espaço em branco até atingir 11
	observacao TEXT,
	idade INTEGER,
	dinheiro NUMERIC(10,2), -- 12345678,90
	altura REAL,
	ativo BOOLEAN, -- TRUE FALSE NULL
	data_nascimento DATE, -- 'YYYY-MM-DD'
	hora_aula TIME, -- 'HH24:MI:SS'
	matriculado_em TIMESTAMP -- 'YYYY-MM-DD HH24:MI:SS'
);

SELECT * FROM aluno;