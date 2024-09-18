CREATE TABLE empregado(
    cod_empregrado SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cod_departamento INT FOREIGN KEY REFERENCES departamento(cod_departamento),
);

CREATE TABLE departamento(
    cod_departamento SERIAL PRIMARY KEY,
    nome_departamento VARCHAR(50) NOT NULL,

    cod_gerente INT FOREIGN KEY REFERENCES gerente(cod_gerente),
    cod_proj INT FOREIGN KEY REFERENCES projeto(cod_proj),
);

CREATE TABLE gerente(
    cod_gerente SERIAL PRIMARY KEY,
    cod_empregrado INT FOREIGN KEY REFERENCES empregado(cod_empregrado),
);

CREATE TABLE projeto(
    cod_proj SERIAL PRIMARY KEY,
    nome_proj VARCHAR(50) NOT NULL,
    data_inicio VARCHAR(50) NOT NULL,
    horas_trabalhadas SERIAL NOT NULL,
);

