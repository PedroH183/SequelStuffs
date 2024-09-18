CREATE TABLE empresa (
    num_empresa SERIAL PRIMARY KEY,
    nome_empresa VARCHAR(20) NOT NULL
);

CREATE TABLE departamento (
    num_departamento SERIAL PRIMARY KEY,
    nome_departamento VARCHAR(50) NOT NULL
);

CREATE TABLE trabalhador (
    num_trabalhador SERIAL PRIMARY KEY,
    nome_trabalhador VARCHAR(20) NOT NULL,
    num_empresa INT REFERENCES empresa(num_empresa),
    num_departamento INT REFERENCES departamento(num_departamento)
);
