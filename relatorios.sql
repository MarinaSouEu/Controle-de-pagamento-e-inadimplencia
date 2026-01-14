-- Clientes inadimplentes
SELECT c.nome, f.valor, f.data_vencimento
FROM Faturas f
JOIN Clientes c ON f.id_cliente = c.id_cliente
WHERE f.status = 'Vencida';

-- Valor total em aberto
SELECT SUM(valor) AS total_em_aberto
FROM Faturas
WHERE status IN ('Em aberto', 'Vencida');

-- Pagamentos realizados
SELECT c.nome, p.data_pagamento, p.valor_pago
FROM Pagamentos p
JOIN Faturas f ON p.id_fatura = f.id_fatura
JOIN Clientes c ON f.id_cliente = c.id_cliente;

-- Faturas por status
SELECT status, COUNT(*) AS quantidade
FROM Faturas
GROUP BY status;
