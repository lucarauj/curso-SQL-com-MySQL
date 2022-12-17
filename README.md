[![NPM](https://img.shields.io/npm/l/react)](https://github.com/lucarauj/curso-SQL-com-MySQL/blob/main/LICENSE)

<h1 align="center"> Introdução ao SQL com MySQL: </h1>
<h2 align="center"> Manipulação e Consulta de Dados </h2>

<p align="center"><img width="150px" src="https://github.com/lucarauj/assets/blob/main/MySQL.png" /></p>
 

## Conceitos importantes:

- Campos -> Coluna;
- Registros -> Linha;
- Chave Primária -> PK;
- Chave Estrangeira -> FK;
- Índices -> permitem encontrar informações da tabela de maneira mais rápida;
- Esquemas(Schemas) -> conjunto de tabelas que representam o mesmo assunto;
- Visão(View) -> são comandos SELECT pré-programados para ficarem disponíveis no banco de dados;
- Procedure e Funções -> subrotina que fica armazenada no banco de dados e pode ser usada em um comando de consulta;
- Trigger -> aviso programado caso algo ocorra no banco de dados ou tabela;

## Comandos:

### Criação de um banco de dados:

```
CREATE database alura_sql;
```

### Seleção de um banco de dados:

```
USE alura_sql;
```

### Exclusão de um banco de dados:

```
DROP DATABASE alura_sql;
```

## Comandos MySQL pelo Prompt de Comando:

```
cd\
```

```
cd "Program Files
```

```
cd MySQL
```

```
cd "MySQL Server 8.0"
```

```
cd bin
```

```
mysql -h localhost -u root -p
```

```
create database meu_banco;
```

```
drop database meu_banco;
```

```
exit
```

## Tipos numéricos:

- TINYINT, SMALLINT, MEDIUMINT, INT, BIGINT, FLOAT, DOUBLE, DECIMAL/NUMERIC, BIT;

## Atributos dos campos numéricos:

- SIGNED ou UNSIGNED: possui ou não sinal no número;
- ZEROFILL: preenche com zeros os espaços não ocupados;
- AUTO_INCREMENT: sequencia auto incrementada;

## Tipos Data e Hora:

- DATE, DATETIME, TIMESTAMP (fuso horário), TIME, YEAR;

## Tipos Strings:

- CHAR, VARCHAR, BINARY, VARBINARY;
- BLOB [Binário longo]: TINYBLOB, BLOB, MEDIUMBLOB, LONGBLOB;
- TEXT [Texto longo]: TINYTEXT, TEXT, MEDIUMTEXT, LONGTEXT;
- ENUM

## Atributos dos campos Strings:

- SET;
- COLLATE;

## Campos Espaciais:

- GEOMETRY, POINT, LINESTRING, POLYGON

## Criando uma tabela:

```
CREATE TABLE tb_produto (CPF VARCHAR(11), NOME VARCHAR(100));
```

## Excluindo uma tabela:

```
DROP TABLE tb_produto;
```

## Populando uma tabela:

```
- INSERT INTO tb_produto (produto, nome, embalagem, tamanho, sabor, preco_lista) VALUES
('1040107', 'Light', 'Lata', '350 ml', 'Melancia', 4.56);
```

## Populando uma tabela com vários itens (modificado):

```
INSERT INTO tb_produto (produto, nome, embalagem, tamanho, sabor, preco_lista) VALUES 
('1037797', 'Clean - 2 Litros - Laranja', 'PET', '2 Litros', 'Laranja', 16.01),
('1000889', 'Sabor da Montanha - 700 ml - Uva', 'Garrafa', '700 ml', 'Uva', 6.31),
('1004327', 'Videira do Campo - 1,5 Litros - Melancia', 'PET', '1,5 Litros', 'Melancia', 19.51);
```

## Pesquisando dados de uma tabela:

```
SELECT * FROM tb_produto;
```

## Alterando registros:

```
UPDATE tb_produto SET embalagem = 'Lata', preco_lista = 2.46 WHERE produto = '544931';
```

## Excluindo registro:

```
DELETE FROM tb_produto WHERE produto = '1078680';
```

## Incluindo chave primária:

```
ALTER TABLE tb_produto ADD PRIMARY KEY(produto);
```

## Incluindo campo (coluna):

```
ALTER TABLE tb_produto ADD COLUMN (DATA_NASCIMENTO DATE);
```

## Excluindo campo (coluna):

```
ALTER TABLE tb_produto DROP COLUMN DATA_NASCIMENTO;
```

## Usando o comando SELECT para pesquisar dados:

```
SELECT * FROM tb_cliente;
```
```
SELECT CPF, NOME FROM tb_cliente;
```
```
SELECT CPF, NOME FROM tb_cliente LIMIT 5;
```
```
SELECT CPF AS CPF_CLIENTE FROM tb_cliente;
```

## Filtrando registros:

```
SELECT * FROM tb_produto WHERE produto = '1004327';
```
```
UPDATE tb_produto SET SABOR = 'Cítricos' WHERE SABOR = 'Limão';
```
```
SELECT * FROM tb_cliente WHERE IDADE <> 22; [Diferente]
```
```
SELECT * FROM tb_cliente WHERE IDADE > 'Fernando Cavalcante'; [Ordem: 1ª letra, 2ª letra...]
```
```
SELECT * FROM tb_produto WHERE PRECO_LISTA BETWEEN 16.007 AND 16.009;
```
```
SELECT * FROM tb_cliente WHERE YEAR(DATA_NASCIMENTO) = 1995;
```
```
SELECT * FROM tb_produto WHERE PRECO_LISTA >= 16.007 OR PRECO_LISTA <= 16.009 AND EMBALAGEM = 'PET';
```

## Aluno

#### Lucas Araujo

<a href="https://www.linkedin.com/in/lucarauj"><img alt="lucarauj | LinkdeIN" width="40px" src="https://user-images.githubusercontent.com/43545812/144035037-0f415fc7-9f96-4517-a370-ccc6e78a714b.png" /></a>
