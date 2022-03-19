SELECT * FROM funcionarios;

SELECT * FROM funcionarios LIMIT 5;

SELECT * 
	FROM funcionarios 
	ORDER BY nome -- ORDER BY antes DO LIMIT
	LIMIT 5;
	
-- do registro 3 ao 6
SELECT * 
	FROM funcionarios 
	ORDER BY id
	LIMIT 4
	OFFSET 2; -- a partir do 3