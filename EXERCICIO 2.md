## Passo 1: Crie um banco de dados chamado ESCOLA com o padrão especificado.
```sql
CREATE DATABASE ESCOLA
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;
```

## Passo 2: Exiba todos os bancos de dados existentes.

```sql
SHOW DATABASES;
```

## Passo 3: Torne o banco ESCOLA ativo.

```sql
USE ESCOLA;
```

## Passo 4: Crie uma tabela chamada t_aluno com os campos:

    ○ id_aluno (inteiro, chave primária, auto incremento)
    ○ nome (texto, até 100 caracteres)
    ○ idade (inteiro)
    ○ cidade (texto, até 100 caracteres)
    ○ serie (texto, até 20 caracteres)

```sql
CREATE TABLE t_aluno (
    id_aluno INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    cidade VARCHAR(100),
    serie VARCHAR(20),
    PRIMARY KEY(id_aluno)
) DEFAULT CHARSET = utf8;
```

## Passo 5: Veja a descrição da tabela criada.

```sql
DESCRIBE t_aluno;
```

## Passo 6: Cadastre pelo menos 3 alunos na tabela.

```sql
INSERT INTO t_aluno (nome, idade, cidade, serie) VALUES
('João Silva', 14, 'São Paulo', '9º Ano'),
('Maria Oliveira', 15, 'Rio de Janeiro', '1º Ano Ensino Médio'),
('Carlos Pereira', 13, 'Belo Horizonte', '8º Ano');
```

## Passo 7: Exiba todos os registros cadastrados.

```sql
SELECT * FROM t_aluno;
```

## Passo 8: Atualize a cidade de um dos alunos.

```sql
UPDATE t_aluno
SET cidade = 'Campinas'
WHERE id_aluno = 1;
```

## Passo 9: Exiba novamente os registros para confirmar a alteração.

```sql
SELECT * FROM t_aluno;
```

## Passo 10: Exporte o banco de dados ESCOLA em formato .sql.