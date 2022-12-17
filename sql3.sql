USE alura_sql;

INSERT INTO tb_produto (
produto, 
nome, 
embalagem, 
tamanho, 
sabor, 
preco_lista) VALUES (
'1040107', 'Light - 350 ml - Melancia', 'Lata', '350 ml', 'Melancia', 4.56);

SELECT * FROM tb_produto;

INSERT INTO tb_produto (produto, nome, embalagem, tamanho, sabor, preco_lista) VALUES 
('1037797', 'Clean - 2 Litros - Laranja', 'PET', '2 Litros', 'Laranja', 16.01),
('1000889', 'Sabor da Montanha - 700 ml - Uva', 'Garrafa', '700 ml', 'Uva', 6.31),
('1004327', 'Videira do Campo - 1,5 Litros - Melancia', 'PET', '1,5 Litros', 'Melancia', 19.51);

INSERT INTO tb_produto (produto, nome, embalagem, tamanho, sabor, preco_lista) VALUES 
('544931', 'Frescor do Verão - 350 ml - Limão', 'PET', '350 ml','Limão',3.20),
('1078680', 'Frescor do Verão - 470 ml - Manga', 'Lata', '470 ml','Manga',5.18);

UPDATE tb_produto SET embalagem = 'Lata', preco_lista = 2.46 WHERE produto = '544931';
UPDATE tb_produto SET embalagem = 'Garrafa' WHERE produto = '1078680';