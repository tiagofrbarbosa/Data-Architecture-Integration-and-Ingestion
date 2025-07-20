-- #########################################################
-- # Curso: Data Science and Artificial Intelligence
-- # Disciplina: Data Architecture, Integration and Ingestion
-- # Data: 2024
-- # Turma: 9DTSR
-- # Alunos:
-- # Nome: Jéssica Portela de Castro    RM: 359735
-- # Nome: Rafael Lorencini da Silva    RM: 358101
-- # Nome: Tiago Freire Barbosa         RM: 358404
-- #########################################################

create database quantum_finance_clientes;

use quantum_finance_clientes;

drop table Documento;
drop table Contato;
drop table Cliente;

CREATE TABLE Cliente (
    id_cliente INT,
    nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    dt_nascimento DATE NOT NULL,
    endereco VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    telefone VARCHAR(20)
);

-- Criação da tabela Contato
CREATE TABLE Contato (
    id_contato INT,
    id_cliente INT NOT NULL,
    tipo_contato VARCHAR(255) NOT NULL,
    valor_contato VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

-- Criação da tabela Documento
CREATE TABLE Documento (
    id_documento INT,
    id_cliente INT NOT NULL,
    tipo_documento VARCHAR(50) NOT NULL,
    data_inclusao DATE NOT NULL,
    conteudo LONGBLOB
);