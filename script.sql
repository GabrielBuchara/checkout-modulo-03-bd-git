-- Criação da tabela de produtos
CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    categoria VARCHAR(50)
);

-- Criação da tabela de pedidos
CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente VARCHAR(100) NOT NULL,
    data_pedido DATE NOT NULL
);

-- Tabela associativa para muitos-para-muitos entre pedidos e produtos
CREATE TABLE pedido_produto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    pedido_id INT,
    produto_id INT,
    quantidade INT NOT NULL,
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Inserção de registros na tabela produtos
INSERT INTO produtos (nome, preco, categoria) VALUES
('Café Expresso', 5.50, 'Bebidas'),
('Pão de Queijo', 4.00, 'Lanches'),
('Bolo de Cenoura', 6.50, 'Doces');

-- Inserção de registros na tabela pedidos
INSERT INTO pedidos (cliente, data_pedido) VALUES
('João da Silva', '2025-06-20'),
('Maria Oliveira', '2025-06-29'),
('Carlos Souza', '2025-06-30');

-- Inserção de registros na tabela pedido_produto
INSERT INTO pedido_produto (pedido_id, produto_id, quantidade) VALUES
(1, 1, 2),
(1, 2, 1),
(2, 3, 1),
(3, 1, 1),
(3, 3, 2);
