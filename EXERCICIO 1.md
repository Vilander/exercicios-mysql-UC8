## Passo 1: Crie um banco de dados chamado LIVRARIA com o padrão especificado.
-- DEFAULT CHARACTER SET utf8 -> Define o conjunto de caracteres padrão para UTF-8.
-- DEFAULT COLLATE utf8_general_ci -> Define as regras de comparação de texto (case-insensitive).

```sql
CREATE DATABASE LIVRARIA
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;
```



## Passo 2: Exiba todos os bancos de dados existentes e verifique se o seu banco foi criado.

```sql
SHOW DATABASES;
```

## Passo 3: Torne o banco LIVRARIA ativo.

```sql
USE LIVRARIA;
```

## Passo 4: Crie uma tabela chamada t_livro com os campos:
    ○ id_livro (inteiro, chave primária, auto incremento)
    ○ titulo (texto, até 150 caracteres)
    ○ autor (texto, até 100 caracteres)
    ○ genero (texto, até 50 caracteres)
    ○ preco (número decimal com duas casas)
    ○ ano_publicacao (inteiro)

```sql
CREATE TABLE t_livro (
    id_livro INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    genero VARCHAR(50),
    preco DECIMAL(10, 2),
    ano_publicacao INT,
    PRIMARY KEY(id_livro)
) DEFAULT CHARSET = utf8;
```

## Passo 5: Veja a descrição da tabela criada.

```sql
DESCRIBE t_livro;
```

## Passo 6: Cadastre pelo menos 3 livros na tabela.

```sql
INSERT INTO t_livro (titulo, autor, genero, preco, ano_publicacao) VALUES
('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 'Fantasia', 59.90, 1954),
('O Guia do Mochileiro das Galáxias', 'Douglas Adams', 'Ficção Científica', 34.50, 1979),
('Dom Casmurro', 'Machado de Assis', 'Romance', 25.00, 1899);
```

## Passo 7: Exiba todos os registros cadastrados.

```sql
SELECT * FROM t_livro;
```

## Passo 8: Atualize o preço de um dos livros.
-- Usando o id_livro (chave primária) para garantir que apenas o registro correto seja alterado.

```sql
UPDATE t_livro
SET preco = 29.99
WHERE id_livro = 3;
```

## Passo 9: Exiba novamente os registros para verificar a alteração.

```sql
SELECT * FROM t_livro;
```


## Passo 10: Exporte o banco de dados LIVRARIA em formato .sql pelo phpMyAdmin ou workbench