CREATE DATABASE coma_bem;
USE coma_bem;

CREATE TABLE produto(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    quantidade DECIMAL(10,2) NOT NULL,
    unidade_medida VARCHAR(20) NOT NULL
    );
    
CREATE TABLE cliente(
     id INT AUTO_INCREMENT PRIMARY KEY,
     nome VARCHAR(100) NOT NULL,
     email VARCHAR (100) NOT NULL,
     telefone VARCHAR(20)
     );
     
CREATE TABLE pedido(
     id INT AUTO_INCREMENT PRIMARY KEY,
     id_cliente INT NOT NULL,
     data_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
     FOREIGN KEY(id_cliente) REFERENCES cliente(id)
     );
     
CREATE TABLE pedido_produto(
     id_pedido INT,
     id_produto INT,
     quantidade DECIMAL(10,2) NOT NULL,
     preco_unitario DECIMAL(10,2) NOT NULL,
     PRIMARY KEY (id_pedido, id_produto),
     FOREIGN KEY (id_pedido) REFERENCES pedido(id),
     FOREIGN KEY (id_produto) REFERENCES produto(id)
     );
     
     
