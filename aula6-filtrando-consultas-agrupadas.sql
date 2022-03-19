SELECT * FROM aluno;
SELECT * FROM aluno_curso;
SELECT * FROM curso;

SELECT * 
	FROM curso
	LEFT JOIN aluno_curso ON aluno_curso.curso_id = curso.id
	LEFT JOIN aluno ON aluno.id = aluno_curso.aluno_id;

-- quais cursos não tem alunos matriculados
SELECT curso.nome,
	   COUNT(aluno.id)
	FROM curso
	LEFT JOIN aluno_curso ON aluno_curso.curso_id = curso.id
	LEFT JOIN aluno ON aluno.id = aluno_curso.aluno_id
	GROUP BY 1;

SELECT  curso.nome,
	   COUNT(aluno.id)
	FROM curso
	LEFT JOIN aluno_curso ON aluno_curso.curso_id = curso.id
	LEFT JOIN aluno ON aluno.id = aluno_curso.aluno_id
	-- WHERE curso.nome =  'Javascript'
	GROUP BY 1
	HAVING COUNT(aluno.id) > 0; -- having retira os registros, neste caso, com zero
	
-- funcionarios duplicados
SELECT nome	
	FROM funcionarios
	GROUP BY nome
	HAVING COUNT (id) > 1;
	
-- quantas duplicações tem
SELECT nome,
	   COUNT(id)
	FROM funcionarios
	GROUP BY nome
	HAVING COUNT(id) > 1;

-- quem não tem nome duplicado
SELECT nome,
	   COUNT(id)
	FROM funcionarios
	GROUP BY nome
	HAVING COUNT(id) = 1;