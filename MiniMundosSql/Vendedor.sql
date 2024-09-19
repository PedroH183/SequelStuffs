create database vendedor;

CREATE TABLE vendedor (
    cod_vendedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    telefone INT NOT NULL,
    cod_endereco INT NOT NULL,
    num_fatura INT NOT NULL,
    FOREIGN KEY (cod_endereco) REFERENCES Endereco(cod_endereco),
    FOREIGN KEY (num_fatura) REFERENCES Fatura(num_fatura)
);

CREATE TABLE residencia (
    cod_endereco INT AUTO_INCREMENT PRIMARY KEY,
    endereco VARCHAR(50) NOT NULL,
    cod_postal INT NOT NULL,
    localidade VARCHAR(50) NOT NULL
);

CREATE TABLE notaFiscal (
    num_fatura INT AUTO_INCREMENT PRIMARY KEY,
    cod_produto INT NOT NULL,
    total INT NOT NULL,
    FOREIGN KEY (cod_produto) REFERENCES Produto(cod_produto)
);

CREATE TABLE produto (
    cod_produto INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(50) NOT NULL,
    preco_unit INT NOT NULL,
    quantidade INT
);
