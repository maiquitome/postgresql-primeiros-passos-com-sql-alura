SELECT * FROM aluno;
SELECT * FROM aluno_curso;
SELECT * FROM curso;

-- ERROR: update or delete on table "aluno" violates foreign key constraint "aluno_curso_aluno_id_fkey" on table "aluno_curso"
-- Detail: Key (id)=(1) is still referenced from table "aluno_curso".
DELETE FROM aluno WHERE id = 1;

DROP TABLE aluno_curso;

CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id,curso_id),
	
	FOREIGN KEY (aluno_id)
     REFERENCES aluno (id)
	 ON DELETE CASCADE,
	
	FOREIGN KEY (curso_id)
   REFERENCES curso (id)
);

INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (1,1);
INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (2,1);
INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (3,1);
INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (1,3);


SELECT * FROM aluno_curso;

SELECT 
  aluno.nome as "Nome do aluno",
	curso.nome as "Nome do curso"
FROM 
  aluno
JOIN 
  aluno_curso ON aluno_curso.aluno_id = aluno.id
JOIN 
  curso	ON curso.id = aluno_curso.curso_id;

DELETE FROM aluno WHERE id = 1;

SELECT * FROM aluno;