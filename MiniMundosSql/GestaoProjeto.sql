CREATE TABLE empregado(
    num_empregado SERIAL PRIMARY KEY,
    nome_empregado VARCHAR(255) NOT NULL,
    num_projeto INT FOREIGN KEY REFERENCES projeto(num_projeto),
    cod_funcao INT FOREIGN KEY REFERENCES funcao_projeto(cod_funcao)
);

CREATE TABLE projeto(
    num_projeto SERIAL PRIMARY KEY,
    nome_projeto VARCHAR(20) NOT NULL
);

CREATE TABLE funcao_projeto(
    cod_funcao SERIAL PRIMARY KEY,
    salario FLOAT NOT NULL,
    descricao TEXT NOT NULL,
    horas_por_semana FLOAT NOT NULL
);