SELECT * FROM aluno;

SELECT * FROM curso;

-- id, nome do aluno, aluno_id, curso_id 
SELECT 
	* 
FROM 
	aluno
JOIN 
	aluno_curso 
ON 
	aluno_curso.aluno_id = aluno.id;


-- id, nome do aluno, aluno_id, curso_id, id do curso, nome do curso
SELECT 
	* 
FROM 
	aluno
JOIN 
	aluno_curso 
ON 
	aluno_curso.aluno_id = aluno.id
JOIN 
	curso		   
ON 
	curso.id = aluno_curso.curso_id;
  
-- aluno e curso
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,2);

SELECT 
	aluno.nome aluno,
	curso.nome curso
FROM 
	aluno
JOIN
	aluno_curso 
ON 
	aluno_curso.aluno_id = aluno.id
JOIN 
	curso
ON 
	curso.id = aluno_curso.curso_id;
  
-- ou usando where
SELECT 
	a.nome aluno,
	c.nome curso
FROM 
	aluno a,
	aluno_curso ac,
	curso c
WHERE 
	ac.aluno_id = a.id
and
	c.id = ac.curso_id;