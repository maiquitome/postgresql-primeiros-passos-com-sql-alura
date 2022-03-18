INSERT INTO aluno(
	nome,
	cpf,
	observacao,
	idade,
	dinheiro,
	altura,
	ativo,
	data_nascimento,
	hora_aula,
	matriculado_em) 
VALUES (
	'Diogo',
	'12345678901',
	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras finibus mollis justo in congue. Curabitur eget malesuada lorem, posuere varius ante. Mauris in est orci. Sed semper pretium velit vitae egestas. Donec finibus semper eleifend. Ut id velit ultricies, pellentesque purus nec, maximus risus. Nulla tristique tellus nec quam condimentum, sit amet convallis erat fermentum. Mauris in dictum dui. In et ante quam. Suspendisse tempor leo nec elementum mattis. Vestibulum rutrum quam risus, eu aliquam sem rhoncus eu.Vestibulum facilisis nunc at viverra luctus. Vestibulum quis tortor lacus. Sed at euismod mauris. Praesent sed neque risus. Donec sed cursus ligula. Nam cursus porttitor purus auctor consequat. In vitae turpis aliquet, euismod quam eu, finibus lacus. Curabitur volutpat tellus et pretium volutpat.',
	35,
	100.50,
	1.81,
	TRUE,
	'1984-08-27',
	'17:30:00',
	'2020-02-08 12:32:45'
);

INSERT INTO aluno (nome) VALUES('Vinicius Dias');
INSERT INTO aluno (nome) VALUES('Nico Steppat');
INSERT INTO aluno (nome) VALUES('João Roberto');
INSERT INTO aluno (nome) VALUES('Diego');

-- Selecionando colunas específicas da tabela
SELECT 
  nome as "Nome do Aluno",
 	idade,
	matriculado_em as quando_se_matriculou,
	observacao "Observação do Aluno"
FROM 
  aluno; 
	
-- Filtrando registros de campos do tipo texto
SELECT *
  FROM aluno
 WHERE nome = 'Diogo';
 
SELECT *
  FROM aluno
 WHERE nome <> 'Diogo';
 
SELECT *
  FROM aluno
 WHERE nome != 'Diogo';
 
SELECT *
  FROM aluno
 WHERE nome LIKE '_iogo';
 
SELECT *
  FROM aluno
 WHERE nome LIKE 'Di_go';
 
SELECT *
  FROM aluno
 WHERE nome NOT LIKE 'Di_go';
 
SELECT *
  FROM aluno
 WHERE nome LIKE 'D%';
 
SELECT *
  FROM aluno
 WHERE nome LIKE '%s';
 
 SELECT *
  FROM aluno
 WHERE nome LIKE '% %';
 
SELECT *
  FROM aluno
 WHERE nome LIKE '%i%a%';
 
-- Filtrando registros de campos do tipo numérico, data e booleano
SELECT *
  FROM aluno
 WHERE cpf IS NULL;
 
SELECT *
  FROM aluno
 WHERE cpf IS NOT NULL;

  SELECT *
  FROM aluno
 WHERE idade = 35;
 
 SELECT *
  FROM aluno
 WHERE idade <> 36;
 
 SELECT *
  FROM aluno
 WHERE idade >= 35;
 
  SELECT *
  FROM aluno
 WHERE idade <= 35;
 
 SELECT *
  FROM aluno
 WHERE idade > 35;
 
 SELECT *
  FROM aluno
 WHERE idade < 100;
 
 SELECT *
  FROM aluno
 WHERE idade BETWEEN 10 AND 40;
 
 SELECT * FROM aluno WHERE ativo = true;
 SELECT * FROM aluno WHERE ativo = false; 
 SELECT * FROM aluno WHERE ativo IS NULL;
 
-- Filtrando utilizando operadores E e OU
SELECT *
  FROM aluno
 WHERE nome LIKE 'D%'
  AND cpf IS NOT NULL;
   
SELECT *
  FROM aluno
 WHERE nome LIKE 'Diogo'
  OR nome LIKE 'Rodrigo';
   
SELECT *
  FROM aluno
 WHERE nome LIKE 'Diogo'
		OR nome LIKE 'Rodrigo'
		OR nome LIKE 'Nico%';
	
SELECT *
  FROM aluno
 WHERE nome LIKE '%Steppat'
	AND nome LIKE 'Nico%';
	
SELECT *
  FROM aluno
 WHERE nome LIKE 'Diogo'
	OR nome LIKE 'Nico%';