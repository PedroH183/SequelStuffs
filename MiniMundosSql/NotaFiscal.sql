CREATE TABLE nota_fiscal(
    cod_fiscal SERIAL PRIMARY KEY,
    serie VARCHAR(20) NOT NULL,
    data_criacao TIMESTAMP NOT NULL,
    total_geral_nota VARCHAR(20) NOT NULL,
    cod_cliente INT FOREIGN KEY REFERENCES cliente(cod_cliente),
);

CREATE TABLE cliente(
    cod_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    csg_cliente VARCHAR(20) NOT NULL,
    cod_endereco INT FOREIGN KEY REFERENCES endereco(cod_endereco),
);

CREATE TABLE endereco(
    cod_endereco SERIAL PRIMARY KEY,
    rua VARCHAR(255) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    bairro VARCHAR(255) NOT NULL,
    complemento VARCHAR(20) NOT NULL,
);

CREATE TABLE mercadoria(
    cod_mercadoria SERIAL PRIMARY KEY,
    cod_nota_fiscal INT FOREIGN KEY REFERENCES nota_fiscal(cod_fiscal),
    descricao TEXT NOT NULL,
    quantidade_venda INT NOT NULL,
    preco_de_venda VARCHAR(20) NOT NULL,
    total_venda_mercadoria VARCHAR(20) NOT NULL,
)