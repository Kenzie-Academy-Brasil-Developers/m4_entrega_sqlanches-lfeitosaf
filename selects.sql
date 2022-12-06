	-- Aqui você deve colocar os códigos SQL referentes às
-- Seleções de dados

-- 1)

SELECT
 	pe.*,
 	pr.*
 FROM 
 	pedidos pe
 JOIN
 	produtos_pedidos pp ON pe.id = pp.pedido_id 
 JOIN 
 	produtos pr ON pr.id = pp.produto_id;


-- 2)

SELECT
 	pe.id
 FROM 
 	pedidos pe
 JOIN
 	produtos_pedidos pp ON pe.id = pp.pedido_id 
 JOIN 
 	produtos pr ON pr.id = pp.produto_id
 WHERE
	pr.nome ILIKE '%Fritas%';

-- 3)

SELECT
 	cl.nome gostam_de_fritas
 FROM 
 	pedidos pe
 JOIN
 	produtos_pedidos pp ON pe.id = pp.pedido_id 
 JOIN 
 	produtos pr ON pr.id = pp.produto_id
 JOIN 
 	clientes cl ON cl.id = pe.cliente_id 
 WHERE
	pr.nome ILIKE '%Fritas%';

-- 4)

SELECT
 	ROUND(SUM(pr.preço)::NUMERIC,2) sum
 FROM 
 	pedidos pe
 JOIN
 	produtos_pedidos pp ON pe.id = pp.pedido_id 
 JOIN 
 	produtos pr ON pr.id = pp.produto_id
 JOIN 
 	clientes cl ON cl.id = pe.cliente_id 
 WHERE
	cl.nome = 'Laura';

-- 5)

  SELECT
 	pr.nome nome,
 	COUNT(nome) count
 FROM 
 	pedidos pe
 JOIN
 	produtos_pedidos pp ON pe.id = pp.pedido_id 
 JOIN 
 	produtos pr ON pr.id = pp.produto_id
 GROUP BY 
	nome
 ORDER BY
	nome;