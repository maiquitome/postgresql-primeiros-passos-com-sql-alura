-- SQL Error [23503]: ERROR: update or delete on table "aluno" violates foreign key constraint "aluno_curso_aluno_id_fkey" on table "aluno_curso"
--  Detail: Key (id)=(2) is still referenced from table "aluno_cur
UPDATE aluno
	SET id = 10
	WHERE id = 2
	
INSERT INTO aluno (nome) VALUES ('maiqui') -- id = 4
	
SELECT * FROM aluno;

UPDATE aluno
	SET id = 20
	WHERE id = 4;
	
DROP TABLE aluno_curso;

CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id,curso_id),
	
	FOREIGN KEY (aluno_id)
     REFERENCES aluno (id)
	 ON DELETE CASCADE
	 ON UPDATE CASCADE,
	
	FOREIGN KEY (curso_id)
   REFERENCES curso (id)
);

INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (2,1);

INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (3,1);

SELECT 
  aluno.nome as "Nome do aluno",
	curso.nome as "Nome do curso"
FROM aluno
JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
JOIN curso		   ON curso.id		   = aluno_curso.curso_id;
  
SELECT
  aluno.id   AS aluno_id,
  aluno.nome as "Nome do aluno",
  curso.id   AS curso_id,
  curso.nome as "Nome do curso"
FROM aluno
JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
JOIN curso		   ON curso.id		   = aluno_curso.curso_id;

UPDATE aluno
	SET id = 10
	WHERE id = 2;
	
SELECT * FROM aluno_curso;