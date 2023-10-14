-- Utilizando o banco de dados Loja
USE Loja;
GO

-- Criando a tabela de Clientes
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(100),
    Email NVARCHAR(100)
);
GO

-- Criando a tabela de Produtos
CREATE TABLE Produtos (
    ProdutoID INT PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(100),
    Preco DECIMAL(10,2)
);
GO

-- Criando a tabela de Categorias
CREATE TABLE Categorias (
    CategoriaID INT PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(100)
);
GO

-- Criando a tabela de Pedidos
CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY IDENTITY(1,1),
    ClienteID INT FOREIGN KEY REFERENCES Clientes(ClienteID),
    ProdutoID INT FOREIGN KEY REFERENCES Produtos(ProdutoID),
    CategoriaID INT FOREIGN KEY REFERENCES Categorias(CategoriaID),
    Quantidade INT,
    DataPedido DATE
);
GO

-- Inserindo dados na tabela de Clientes
INSERT INTO Clientes (Nome, Email)
VALUES 
    ('Carlos Silva', 'carlos@example.com'),
    ('Maria Oliveira', 'maria@example.com');
GO

-- Inserindo dados na tabela de Produtos
INSERT INTO Produtos (Nome, Preco)
VALUES 
    ('Produto A', 10.50),
    ('Produto B', 20.30);
GO

-- Inserindo dados na tabela de Categorias
INSERT INTO Categorias (Nome)
VALUES 
    ('Eletrônicos'),
    ('Roupas'),
    ('Alimentos'),
    ('Livros');
GO

-- Inserindo dados na tabela de Pedidos
INSERT INTO Pedidos (ClienteID, ProdutoID, CategoriaID, Quantidade, DataPedido)
VALUES 
    (1, 1, 1, 2, '2023-10-01'),
    (2, 2, 2, 1, '2023-10-02');
GO
