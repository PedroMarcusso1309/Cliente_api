CREATE TABLE cliente (
    id_cliente INTEGER GENERATED ALWAYS AS IDENTITY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    email VARCHAR(150) NOT NULL,
    telefone VARCHAR(15),
    data_nascimento DATE,
    ativo BOOLEAN NOT NULL DEFAULT TRUE,

    -- CONSTRAINT permite criar uma restrição e atribuir um nome a ela.
    -- Esse nome facilita a identificação da regra e de possíveis erros.

    -- PRIMARY KEY (Chave Primária)
    -- Define id_cliente como identificador único de cada registro.
    -- Não permite valores duplicados nem valores NULL.
    CONSTRAINT pk_cliente PRIMARY KEY (id_cliente),

    -- UNIQUE (Valor Único)
    -- Impede que dois clientes sejam cadastrados com o mesmo CPF.
    -- Cada CPF deverá aparecer apenas uma vez na tabela.
    CONSTRAINT uq_cliente_cpf UNIQUE (cpf),

    -- UNIQUE (Valor Único)
    -- Impede o cadastro de clientes com o mesmo endereço de e-mail.
    CONSTRAINT uq_cliente_email UNIQUE (email)
);