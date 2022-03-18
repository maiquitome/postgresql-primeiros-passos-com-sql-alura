INSERT INTO aluno (nome) VALUES ('Nico');

SELECT * FROM aluno

-- não traz o nico
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

-- inserindo o curso de css
INSERT INTO curso (id,nome) VALUES (3,'CSS');

SELECT * FROM curso;

-- traz o nico, mas não traz o css
SELECT 
	aluno.nome as "Nome do aluno",
	curso.nome as "Nome do curso"
FROM 
	aluno
LEFT JOIN -- traz informação da tabela da esquerda, mesmo não tendo informação na tabela da direita
	aluno_curso 
ON 
	aluno_curso.aluno_id = aluno.id
LEFT JOIN 
	curso		   
ON 
	curso.id = aluno_curso.curso_id;


-- traz o css, mas não traz o nico
SELECT 
	aluno.nome "Nome do aluno",
	curso.nom  "Nome do curso"
FROM 
	aluno
RIGHT JOIN 
	aluno_curso 
ON 
	aluno_curso.aluno_id = aluno.id
RIGHT JOIN 
	curso		   
ON 
	curso.id = aluno_curso.curso_id;


-- traz o css e o nico
SELECT 
	aluno.nome "Nome do aluno",
	curso.nome "Nome do curso"
FROM 
	aluno
FULL JOIN 
	aluno_curso 
ON 
	aluno_curso.aluno_id = aluno.id
FULL JOIN 
	curso		   
ON 
	curso.id = aluno_curso.curso_id;

-- faz todos os dados da tabela A serem misturados com todos os dados da tabela B
SELECT 
	aluno.nome "Nome do aluno",
	curso.nome "Nome do curso"
FROM 
	aluno
CROSS JOIN 
	curso;