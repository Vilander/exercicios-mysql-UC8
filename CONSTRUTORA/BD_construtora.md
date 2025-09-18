# EXERCICIO MySQL
Em nosso sistema de controle de projetos são armazenados instrumentos, departamentos, usuários e os projetos da empresa. Cada usuário pode participar de vários projetos e cada projeto pode usufruir de vários instrumentos. O sistema precisa, agora, incluir veículos. Cada veículo poderá ser reaproveitado em vários projetos. Esses veículos precisam estar sob a supervisão de um responsável da empresa. 


Realizar a Modelagem de Dados:
Conceitual (Brainstorms)
Lógico (Diagrama ER)
Físico (Criando os scripts no Banco de Dados)

## DATABASE CONSTRUTORA:

```sql
CREATE DATABASE construtora
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;
```

## TABELA DEPARTAMENTOS

```sql
CREATE TABLE departamentos (
    id_departamentos INT AUTO_INCREMENT PRIMARY KEY,
    setor VARCHAR(100) NOT NULL
);
```

## TABELA USUARIOS

```sql
CREATE TABLE usuarios (
    id_usuarios INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_departamentos INT,
    ADD CONSTRAINT FK_USUARIOS_DEPARTAMENTOS FOREIGN KEY (id_departamentos) REFERENCES departamentos(id_departamentos)
);
```

<!-- ## TABELA RESPONSAVEIS

```sql
CREATE TABLE responsaveis (
    id_responsaveis INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_departamentos INT,
    FOREIGN KEY (id_departamentos) REFERENCES departamentos(id_departamentos)
); -->
<!-- ``` -->

## TABELA VEICULOS

```sql
CREATE TABLE veiculos (
    id_veiculos INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(20) NOT NULL,
    modelo VARCHAR(100) NOT NULL,
    id_usuarios INT,
    ADD CONSTRAINT FK_VEICULOS_USUARIOS FOREIGN KEY (id_usuarios) REFERENCES usuarios(id_usuarios)
);
```

## TABELA EQUIPES

```sql
CREATE TABLE equipes (
    id_equipes INT AUTO_INCREMENT PRIMARY KEY,
    id_usuarios INT,
    ADD CONSTRAINT FK_EQUIPES_USUARIOS FOREIGN KEY (id_usuarios) REFERENCES usuarios(id_usuarios)
);
```

## TABELA FERRAMENTAS

```sql
CREATE TABLE ferramentas (
    id_ferramentas INT AUTO_INCREMENT PRIMARY KEY,
    nome_ferramentas VARCHAR(100) NOT NULL
);
```

## TABELA KIT_FERRAMENTAS

```sql
CREATE TABLE kits (
    id_kits INT AUTO_INCREMENT PRIMARY KEY,
    id_ferramentas INT,
    ADD CONSTRAINT FK_KITS_FERRAMENTAS FOREIGN KEY (id_ferramentas) REFERENCES ferramentas(id_ferramentas)
);
```

## TABELA PROJETOS

```sql
CREATE TABLE projetos (
    id_projeto INT AUTO_INCREMENT PRIMARY KEY,
    id_kits INT,
    id_veiculos INT,
    id_equipes INT,
    ADD CONSTRAINT FK_PROJETOS_VEICULOS FOREIGN KEY (id_veiculos) REFERENCES veiculos(id_veiculos),
    ADD CONSTRAINT FK_PROJETOS_EQUIPES FOREIGN KEY (id_equipes) REFERENCES equipes(id_equipes),
    ADD CONSTRAINT FK_PROJETOS_RESPONSAVEIS FOREIGN KEY (id_responsaveis) REFERENCES responsaveis(id_responsaveis),
    ADD CONSTRAINT FK_PROJETOS_KITS FOREIGN KEY (id_kits) REFERENCES kits(id_kits)
);
```