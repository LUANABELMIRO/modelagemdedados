/* agenciadeviagensLógico_1: */

CREATE TABLE Pessoa_Fisica (
    cpf VARCHAR
);

CREATE TABLE Agencia_de_Viagens_Embarque (
    Funcionario VARCHAR,
    funcionario_id VARCHAR PRIMARY KEY,
    empresadevoo VARCHAR
);

CREATE TABLE Passagens (
    idaxvolta VARCHAR
);

CREATE TABLE PessoaJuridica (
    cnpj DECIMAL
);

CREATE TABLE Clientes (
    endereco VARCHAR,
    cliente_id DECIMAL,
    nome VARCHAR,
    telefone DECIMAL
);

CREATE TABLE vende (
    fk_Agencia_de_Viagens_Embarque_funcionario_id VARCHAR
);

CREATE TABLE Relacionamento_1_Pessoa_Fisica_Clientes_PessoaJuridica_Passagens (
);
 
ALTER TABLE vende ADD CONSTRAINT FK_vende_1
    FOREIGN KEY (fk_Agencia_de_Viagens_Embarque_funcionario_id)
    REFERENCES Agencia_de_Viagens_Embarque (funcionario_id)
    ON DELETE SET NULL;