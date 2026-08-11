-- para uma consulta normal para saber os funcionários cadastrados na tabela:
SELECT * FROM funcionarios;

--para consultar o registro por coluna:
-- pela situação
SELECT * FROM funcionarios WHERE situacao = 'ativo';

-- pelo email:
SELECT * FROM funcionarios WHERE email = 'emailusuarioA@gmail.com';

-- pelo cargo:
SELECT * FROM funcionarios WHERE id_cargo = 'id do cargo';

--consultar registros específicos apenas por um atributo de uma coluna inserido na tabela exemplo: nome de um funcionario:
SELECT * FROM funcionarios WHERE nome_funcionario LIKE 'nomefuncionarioA%';

-->OBS: usar o comando 'ILIKE' ignora erros de ortografia.

--para consultas mais objetivas e de maneira mais ampla usaremos o comando JOIN :
SELECT 
departamento.id_departamento,
departamento.nome_departamento,
departamento.id_gerente,
funcionarios.id_funcionario,
funcionarios.nome_completo
FROM departamentos
JOIN funcionarios 
ON departamento.id_gerente = funcionarios.id_funcionario;


