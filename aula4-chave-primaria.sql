CREATE TABLE curso(
	id INTEGER, -- pode ser nulo e pode repetir
	nome VARCHAR(255)
);

INSERT INTO curso (id, nome) VALUES (NULL, NULL);

SELECT * FROM curso;

DROP TABLE curso;

-------------------------------------

CREATE TABLE curso(
	id INTEGER NOT NULL, -- ainda pode repetir
	nome VARCHAR(255) NOT NULL
);

-- error
INSERT INTO curso (id, nome) VALUES (NULL, NULL);
INSERT INTO curso (id, nome) VALUES (1, NULL);
INSERT INTO curso (id, nome) VALUES (NULL, 'HTML');

-- deu certo, mesmo repetindo o id
INSERT INTO curso (id, nome) VALUES (1, 'HTML');
INSERT INTO curso (id, nome) VALUES (1, 'Javascript');

SELECT * FROM curso;

DROP TABLE curso;

---------------------------------------

CREATE TABLE curso(
	id INTEGER NOT NULL UNIQUE,
	nome VARCHAR(255) NOT NULL
);

INSERT INTO curso (id, nome) VALUES (1, 'HTML');

-- error: não pode ter um curso com o mesmo id
INSERT INTO curso (id, nome) VALUES (1, 'Javascript');

-- aqui tudo certo
INSERT INTO curso (id, nome) VALUES (2, 'Javascript');

DROP TABLE curso;

----------------------------------------

CREATE TABLE curso(
	id INTEGER PRIMARY KEY, -- primary key: tem as caracteristicas do not null e unique
	nome VARCHAR(255) NOT NULL
);

INSERT INTO curso (id, nome) VALUES (1, 'HTML');
INSERT INTO curso (id, nome) VALUES (2, 'Javascript');

SELECT * FROM curso;