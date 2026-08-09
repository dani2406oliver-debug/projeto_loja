CREATE TABLE funcionarios(
  id_funcionario SERIAL PRIMARY KEY,
  nome_funcionario VARCHAR(100) NOT NULL,
  id_cargo INT NOT NULL,
  situacao VARCHAR(20) NOT NULL,
  telefone VARCHAR(25),
  email VARCHAR(100) UNIQUE, 
  data_nasciment DATE,
  data_admissao DATE 
  FOREIGN KEY (id_cargo) REFERENCES cargos (id_cargo) );
-- tabela criada para funcionários para registrar dados após a contratação, será utilizada chave estrangeira na 
-- coluna "id_cargo" para facilitar a atualização caso a empresa queira mudar o nome do cargo.

CREATE TABLE cargos(
  id_cargo SERIAL PRIMARY KEY,
  nome_cargo VARCHAR(100) NOT NULL,
  id_setor INT NOT NULL
  FOREIGN KEY (id_setor) REFERENCES setor (id_setor) );
-- tabela criada para organizar os cargos da empresa pertencentes a cada funcionario de determinado setor.

CREATE TABLE setores(
  id_setor SERIAL PRIMARY KEY,
  nome_setor VARCHAR(50) NOT NULL,
  id_supervisor INT NOT NULL,
  id_departamento INT NOT NULL
  FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento) 
  FOREIGN KEY (id_supervisor) REFERENCES funcionarios (id_funcionario));
--tabela criada para organização dos setores, pertencentes a cada departamento com os seus determinados reponsáveis.

CREATE TABLE departamentos(
  id_departamento SERIAL PRIMARY KEY,
  nome_departamento VARCHAR(100) NOT NULL,
  id_gerente INT NOT NULL
  FOREIGN KEY (id_gerente) REFERENCES funcionarios (id_funcionario) );
-- criação da tabela departamentos, na qual determina o gerente que está responsável pelo departamento e qual seguimento o departamento atua.


