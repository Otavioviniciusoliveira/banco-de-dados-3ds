-- Criação da tabela Clientes
CREATE TABLE Clientes (
    ID INT PRIMARY KEY,
    nomeCliente VARCHAR(255),
    emailCliente VARCHAR(255)
);

-- Criação da tabela Compras
CREATE TABLE Compras (
    CompraID INT PRIMARY KEY,
    ClienteID INT,
    NomeLivro VARCHAR(255),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);

-- Inserção de dados na tabela Clientes
INSERT INTO Clientes (ID, nomeCliente, emailCliente) 
VALUES 
(1, 'Ana Silva', 'ana.silva@email.com'),
(2, 'Carlos Souza', 'carlos.souza@email.com'),
(3, 'Beatriz Oliveira', 'beatriz.oliveira@email.com');

-- Inserção de dados na tabela Compras
INSERT INTO Compras (CompraID, ClienteID, NomeLivro) 
VALUES 
(1, 1, 'Dom Quixote'),
(2, 2, 'O Pequeno Príncipe'),
(3, 1, '1984'),
(4, 3, 'Orgulho e Preconceito'),
(5, 2, 'A Arte da Guerra');



-- Consulta com INNER JOIN
SELECT 
    Clientes.nomeCliente, 
    Compras.NomeLivro
FROM 
    Compras
INNER JOIN 
    Clientes
ON 
    Compras.ClienteID = Clientes.ID;
SELECT * FROM Clientes;
