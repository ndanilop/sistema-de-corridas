-- Criação do schema
CREATE SCHEMA trabalho_final;

-- Mudança de schema e criação das tabelas

CREATE TABLE trabalho_final.Estados (
    id_estado INT PRIMARY KEY,
    nome_estado VARCHAR(40) NOT NULL UNIQUE,
    sigla_estado VARCHAR(2) NOT NULL UNIQUE
);

CREATE TABLE trabalho_final.Cidades (
    id_cidade INT PRIMARY KEY,
    nome_cidade VARCHAR(60) NOT NULL,
    id_estado INT NOT NULL,
    FOREIGN KEY (id_estado) REFERENCES trabalho_final.Estados(id_estado),
    UNIQUE (nome_cidade, id_estado)
);

CREATE TABLE trabalho_final.CEPs (
    id_cep INT PRIMARY KEY,
    cep VARCHAR(9) NOT NULL UNIQUE,
    id_cidade INT NOT NULL,
    FOREIGN KEY (id_cidade) REFERENCES trabalho_final.Cidades(id_cidade)
);

CREATE TABLE trabalho_final.Enderecos (
    id_endereco INT PRIMARY KEY,
    rua VARCHAR(100) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    id_cep INT NOT NULL,
    FOREIGN KEY (id_cep) REFERENCES trabalho_final.CEPs(id_cep),
    UNIQUE (rua, numero, id_cep)
);

CREATE TABLE trabalho_final.Pessoas (
    id_pessoa INT PRIMARY KEY,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    rg VARCHAR(20) NOT NULL UNIQUE,
    data_nascimento DATE NOT NULL,
    id_endereco INT NOT NULL,
    FOREIGN KEY (id_endereco) REFERENCES trabalho_final.Enderecos(id_endereco)
);

CREATE TABLE trabalho_final.Motoristas (
    id_motorista INT PRIMARY KEY,
    cnh VARCHAR(20) NOT NULL UNIQUE,
    conta_corrente VARCHAR(20),
    FOREIGN KEY (id_motorista) REFERENCES trabalho_final.Pessoas(id_pessoa)
);

CREATE TABLE trabalho_final.Passageiros (
    id_passageiro INT PRIMARY KEY,
    cartao VARCHAR(20),
    FOREIGN KEY (id_passageiro) REFERENCES trabalho_final.Pessoas(id_pessoa)
);

CREATE TABLE trabalho_final.Motorista_Corridas (
    id_passageiro INT NOT NULL,
    numero_corrida INT NOT NULL,
    id_motorista INT NOT NULL,
    PRIMARY KEY (id_passageiro, numero_corrida),
    FOREIGN KEY (id_motorista) REFERENCES trabalho_final.Motoristas(id_motorista),
    FOREIGN KEY (id_passageiro) REFERENCES trabalho_final.Passageiros(id_passageiro)
);

CREATE TABLE trabalho_final.Corridas (
    numero_corrida INT NOT NULL,
    id_passageiro INT NOT NULL,
    valor_passageiro FLOAT NOT NULL,
    data_inicio DATE NOT NULL,
    hora_inicio TIME NOT NULL,
    data_fim DATE NOT NULL,
    hora_fim TIME NOT NULL,
    valor_corrida FLOAT NOT NULL,
    id_endereco INT NOT NULL,
    complemento VARCHAR(60),
    PRIMARY KEY (numero_corrida, id_passageiro),
    FOREIGN KEY (numero_corrida, id_passageiro) REFERENCES trabalho_final.Motorista_Corridas(numero_corrida, id_passageiro),
    FOREIGN KEY (id_endereco) REFERENCES trabalho_final.Enderecos(id_endereco)
);

CREATE TABLE trabalho_final.Caronas (
    id_caronista INT NOT NULL,
    numero_corrida INT NOT NULL,
    id_passageiro INT NOT NULL,
    valor_carona FLOAT NOT NULL,
    PRIMARY KEY (id_caronista, numero_corrida, id_passageiro),
    FOREIGN KEY (id_caronista) REFERENCES trabalho_final.Passageiros(id_passageiro),
    FOREIGN KEY (numero_corrida, id_passageiro) REFERENCES trabalho_final.Corridas(numero_corrida, id_passageiro)
);

CREATE TABLE trabalho_final.Atendentes (
    id_atendente INT PRIMARY KEY,
    formacao VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_atendente) REFERENCES trabalho_final.Pessoas(id_pessoa)
);

CREATE TABLE trabalho_final.Modelos (
    id_modelo INT PRIMARY KEY,
    modelo VARCHAR(50) NOT NULL,
    marca VARCHAR(40) NOT NULL,
    caracteristicas VARCHAR(200)
);

CREATE TABLE trabalho_final.Veiculos (
    id_veiculo INT PRIMARY KEY,
    renavam VARCHAR(20) NOT NULL UNIQUE,
    data_compra DATE NOT NULL,
    preco FLOAT NOT NULL,
    id_modelo INT NOT NULL,
    ano INT NOT NULL,
    id_motorista INT NOT NULL,
    FOREIGN KEY (id_modelo) REFERENCES trabalho_final.Modelos(id_modelo),
    FOREIGN KEY (id_motorista) REFERENCES trabalho_final.Motoristas(id_motorista)
);

CREATE TABLE trabalho_final.Seguradoras (
    id_seguradora INT PRIMARY KEY,
    cnpj VARCHAR(18) NOT NULL UNIQUE,
    nome VARCHAR(80) NOT NULL,
    telefone VARCHAR(20),
    id_endereco INT NOT NULL,
    FOREIGN KEY (id_endereco) REFERENCES trabalho_final.Enderecos(id_endereco)
);

CREATE TABLE trabalho_final.Seguradora_Veiculos (
    id_veiculo INT NOT NULL,
    id_seguradora INT NOT NULL,
    valor FLOAT NOT NULL,
    apolice VARCHAR(30) NOT NULL,
    PRIMARY KEY (id_veiculo, id_seguradora),
    FOREIGN KEY (id_veiculo) REFERENCES trabalho_final.Veiculos(id_veiculo),
    FOREIGN KEY (id_seguradora) REFERENCES trabalho_final.Seguradoras(id_seguradora)
);

CREATE TABLE trabalho_final.Atendimentos (
    id_passageiro INT NOT NULL,
    numero_corrida INT NOT NULL,
    id_atendente INT NOT NULL,
    PRIMARY KEY (id_passageiro, numero_corrida),
    FOREIGN KEY (numero_corrida, id_passageiro) REFERENCES trabalho_final.Corridas(numero_corrida, id_passageiro),
    FOREIGN KEY (id_atendente) REFERENCES trabalho_final.Atendentes(id_atendente)
);

CREATE TABLE trabalho_final.Perguntas (
    id_passageiro INT NOT NULL,
    numero_corrida INT NOT NULL,
    numero_pergunta INT NOT NULL,
    pergunta VARCHAR(200) NOT NULL,
    resposta VARCHAR(200),
    PRIMARY KEY (id_passageiro, numero_corrida, numero_pergunta),
    FOREIGN KEY (id_passageiro, numero_corrida) REFERENCES trabalho_final.Atendimentos(id_passageiro, numero_corrida)
);
