CREATE TABLE material(
    id SERIAL PRIMARY KEY,
    descricao TEXT NOT NULL,
    valor_unitario FLOAT NOT NULL
    fornecedor_id INT FOREIGN KEY REFERENCES fornecedor(id),
);

CREATE TABLE fornecedor(
    id SERIAL PRIMARY KEY,
    num_fornecedor VARCHAR(20) NOT NULL,
    endereco_id INT FOREIGN KEY REFERENCES endereco(id),
);

CREATE TABLE endereco(
    id SERIAL PRIMARY KEY,
    cep VARCHAR(10) NOT NULL,
    rua VARCHAR(100) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    cidade_id INT FOREIGN KEY REFERENCES cidade(id)
);

CREATE TABLE compra_material(
    id SERIAL PRIMARY KEY,
    quantidade_material INT NOT NULL,
    valor_total_item FLOAT NOT NULL,

    material_id INT FOREIGN KEY REFERENCES material(id),
    ordem_compra_id INT FOREIGN KEY REFERENCES ordem_compra(id),
);

CREATE TABLE ordem_compra(
    id SERIAL PRIMARY KEY,
    data_emissao TIMESTAMP NOT NULL,
    valor_total_ordem FLOAT NOT NULL,
);

CREATE TABLE cidade(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(30) NOT NULL,
    estado_id INT FOREIGN KEY estado(id),
);

CREATE TABLE estado(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(30) not null,
);