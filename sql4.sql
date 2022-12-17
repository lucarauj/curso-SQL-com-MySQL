USE alura_sql;

SELECT * FROM tb_produto;

DELETE FROM tb_produto WHERE produto = '1078680';

ALTER TABLE tb_produto ADD PRIMARY KEY(produto);
