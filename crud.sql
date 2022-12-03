-- Aqui você deve colocar os códigos SQL referentes às
-- Simulações de um CRUD

-- Criação

-- 1)

INSERT INTO 
	clientes(nome, lealdade)
VALUES('Georgia', 0)

-- 2)

INSERT INTO pedidos
    (status, cliente_id)
VALUES
  ('Recebido', 6);

-- 3)

INSERT INTO produtos_pedidos
  (pedido_id, produto_id)
VALUES
  (6, 1),
  (6, 2),
  (6, 6),
  (6, 8),
  (6, 8);

-- Leitura

-- 1)

SELECT
 	cl,
 	pe,
 	pr
 FROM 
 	pedidos pe
 JOIN
 	produtos_pedidos pp ON pe.id = pp.pedido_id 
 JOIN 
 	produtos pr ON pr.id = pp.produto_id
 JOIN 
 	clientes cl ON cl.id = pe.cliente_id 
 WHERE
	cl.nome = 'Georgia';

-- Atualização

-- 1)

UPDATE 
	clientes 
SET 
	lealdade = 48
WHERE
	nome = 'Georgia';

-- Deleção

-- 1)

DELETE FROM
	clientes
WHERE 
	nome = 'Marcelo';
