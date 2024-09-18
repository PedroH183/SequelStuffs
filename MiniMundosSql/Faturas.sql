CREATE DATABASE faturas;

-- create a table
CREATE TABLE fatura (
  id INTEGER PRIMARY KEY,
  FOREIGN KEY (id_detalhe_fatura) REFERENCES contribuinte(id),
  FOREIGN KEY (id_contribuinte) REFERENCES contribuinte(id),
  id_contribuinte_cliente INTEGER NOTNULL,
  total FLOAT NOTNULL,
  data DATE NOTNULL
);

CREATE TABLE contribuinte (
  id INTEGER PRIMARY KEY,
  nome VARCHAR(255),
  morada VARCHAR(255),
  telefone VARCHAR(255)
  );

CREATE TABLE detalhe_fatura (
  id INTEGER PRIMARY KEY,
  FOREIGN KEY (id_produto) REFERENCES produto(id),
  quantidade INTEGER,
  iva FLOAT,
  total FLOAT,
  subtotal FLOAT
);

CREATE TABLE produto (
  id INTEGER PRIMARY KEY,
  descrição VARCHAR(255),
  foto VARCHAR(255),
  preco FLOAT
  );