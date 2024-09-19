CREATE DATABASE ordem_compra;

CREATE TABLE material (
	id INT AUTO_INCREMENT PRIMARY KEY,
	FOREIGN KEY (fornecedor_id) REFERENCES fornecedor(id),
	descricao VARCHAR(100) NOT NULL,
	valor_unitario FLOAT(10,6) NOT NULL
);

CREATE TABLE compra_material (
	id INT AUTO_INCREMENT PRIMARY KEY,
	FOREIGN_KEY (material_id) REFERENCES material(id),
	FOREIGN_KEY (ordem_compra_id) REFERENCES ordem_compra(id),
	quantidade_material INT NOT NULL,
	valor_total_item FLOAT(10,6) NOT NULL
);

CREATE TABLE ordem_compra (
	id INT AUTO_INCREMENT PRIMARY KEY,
	data_emissao DATETIME NOT NULL,
	valor_total_ordem FLOAT(10,6) NOT NULL
);

CREATE TABLE fornecedor (
	id INT AUTO_INCREMENT PRIMARY KEY,
	FOREIGN KEY (endereco_id) REFERENCES endereco(id),
	num_fornecedor VARCHAR(20) NOT NULL
);

CREATE TABLE endereco (
	id INT AUTO_INCREMENT PRIMARY KEY,
	FOREIGN KEY (cidade_id) REFERENCES cidade(id),
	numero VARCHAR(10) NOT NULL,
	rua VARCHAR(100) NOT NULL,
	bairro	VARCHAR(100) NOT NULL,
	cep VARCHAR(10) NOT NULL,
);

CREATE TABLE estados (
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL;
);

CREATE TABLE cidades (
	id INT AUTO_INCREMENT PRIMARY KEY,
	FOREIGN KEY (estado_id) REFERENCES estado(id),
	nome VARCHAR(30) NOT NULL;
);
