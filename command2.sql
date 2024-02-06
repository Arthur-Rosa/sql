USE Loja;

CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Email VARCHAR(100)
);

CREATE TABLE Produtos (
    ProdutoID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Preco DECIMAL(10,2)
);

CREATE TABLE Categorias (
    CategoriaID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100)
);

CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY AUTO_INCREMENT,
    ClienteID INT,
    ProdutoID INT,
    CategoriaID INT,
    Quantidade INT,
    DataPedido DATE,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID),
    FOREIGN KEY (CategoriaID) REFERENCES Categorias(CategoriaID)
);

INSERT INTO Clientes (Nome, Email) VALUES 
('Carlos Silva', 'carlos@example.com'),
('Maria Oliveira', 'maria@example.com');

INSERT INTO Produtos (Nome, Preco) VALUES 
('Produto A', 10.50),
('Produto B', 20.30);

INSERT INTO Categorias (Nome) VALUES 
('Eletrônicos'),
('Roupas'),
('Alimentos'),
('Livros');

INSERT INTO Pedidos (ClienteID, ProdutoID, CategoriaID, Quantidade, DataPedido) VALUES 
(1, 1, 1, 2, '2023-10-01'),
(2, 2, 2, 1, '2023-10-02');

INSERT INTO Produtos (Nome, Preco) VALUES 
('Produto C', 15.00),
('Produto D', 25.00);

INSERT INTO Pedidos (ClienteID, ProdutoID, Quantidade, DataPedido) VALUES 
(1, 1, 3, '2023-10-05');
