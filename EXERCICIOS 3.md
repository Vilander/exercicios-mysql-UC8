#Exercícios de Banco de Dados: CINEMA


## Passo 1: Crie um banco de dados chamado CINEMA.
```sql
CREATE DATABASE CINEMA
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;
```

## Passo 2: Exiba todos os bancos de dados existentes.

```sql
SHOW DATABASES;
```

## Passo 3: Torne o banco CINEMA ativo.

```sql
USE CINEMA;
```

## Passo 4: Crie uma tabela chamada t_filme com os campos:

```
○ id_filme (inteiro, chave primária, auto incremento)
○ titulo (texto, até 150 caracteres)
○ diretor (texto, até 100 caracteres)
○ genero (texto, até 50 caracteres)
○ duracao (inteiro, em minutos)
○ classificacao (texto, até 10 caracteres)
```

```sql
CREATE TABLE t_filme (
    id_filme INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    diretor VARCHAR(100),
    genero VARCHAR(50),
    duracao INT,
    classificacao VARCHAR(10),
    PRIMARY KEY(id_filme)
) DEFAULT CHARSET = utf8;
```

## Passo 5: Veja a descrição da tabela criada.
```sql
DESCRIBE t_filme;
```

## Passo 6: Cadastre pelo menos 3 filmes na tabela.

```sql
INSERT INTO t_filme (titulo, diretor, genero, duracao, classificacao) VALUES
('O Poderoso Chefão', 'Francis Ford Coppola', 'Drama', 175, '14 anos'),
('Pulp Fiction: Tempo de Violência', 'Quentin Tarantino', 'Crime', 154, '18 anos'),
('Interestelar', 'Christopher Nolan', 'Ficção Científica', 169, '10 anos');
```

## Passo 7: Exiba todos os registros cadastrados.

```sql
SELECT * FROM t_filme;
```

## Passo 8: Atualize a duração de um dos filmes.

```sql
UPDATE t_filme
SET duracao = 178
WHERE id_filme = 1;
```

## Passo 9: Exiba novamente os registros para confirmar a alteração.

```sql
SELECT * FROM t_filme;
```

## Passo 10: Exporte o banco de dados CINEMA em formato .sql.
