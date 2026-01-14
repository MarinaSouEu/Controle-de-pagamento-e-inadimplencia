CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    status VARCHAR(20)
);

CREATE TABLE Faturas (
    id_fatura INT PRIMARY KEY,
    id_cliente INT,
    valor DECIMAL(10,2),
    data_emissao DATE,
    data_vencimento DATE,
    status VARCHAR(20),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

CREATE TABLE Pagamentos (
    id_pagamento INT PRIMARY KEY,
    id_fatura INT,
    data_pagamento DATE,
    valor_pago DECIMAL(10,2),
    FOREIGN KEY (id_fatura) REFERENCES Faturas(id_fatura)
);

INSERT INTO Clientes VALUES
(1, 'Empresa Alpha', 'alpha@email.com', 'Ativo'),
(2, 'Empresa Beta', 'beta@email.com', 'Ativo'),
(3, 'Empresa Gama', 'gama@email.com', 'Inativo');

INSERT INTO Faturas VALUES
(1, 1, 1500.00, '2025-01-01', '2025-01-10', 'Paga'),
(2, 2, 2300.00, '2025-01-05', '2025-01-15', 'Em aberto'),
(3, 1, 800.00,  '2025-01-08', '2025-01-18', 'Vencida');

INSERT INTO Pagamentos VALUES
(1, 1, '2025-01-09', 1500.00);
