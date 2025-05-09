INSERT INTO produto (nome, preco, quantidade, unidade_medida) VALUES
('Carne', 30.00, 2.00, 'kg'),
('Óleo', 30.00, 1.00, 'unidade'),
('Leite', 30.00, 1.50, 'litros'),
('Alface', 30.00, 1.00, 'unidade');

INSERT INTO cliente(nome, email, telefone) VALUES
('João da Silva', 'joao@email.com', '1245879966');

INSERT INTO pedido (id_cliente) VALUES (1);

INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, preco_unitario) VALUES
(1, 1, 1.00, 30.00),
(1, 3, 2.00, 30.00);







