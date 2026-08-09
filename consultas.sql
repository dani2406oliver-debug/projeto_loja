-- para uma consulta normal para saber os funcionários cadastrados na tabela:
SELECT * FROM funcionarios;

--para consultar o registro por coluna:
-- pela situação
SELECT * FROM funcionarios WHERE situacao = 'ativo';

-- pelo email:
SELECT * FROM funcionarios WHERE email = 'emailusuarioA@gmail.com';

-- pelo cargo:
SELECT * FROM funcionarios WHERE id_cargo = 'id do cargo';

