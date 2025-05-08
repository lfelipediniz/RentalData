-- ---------------------------------------------------
-- 1) Criar (ou recriar) a base de dados
-- ---------------------------------------------------
DROP DATABASE IF EXISTS atividade3_bd;
CREATE DATABASE atividade3_bd;
\connect atividade3_bd

-- ---------------------------------------------------
-- 2) Tabelas principais (sem restrições)
-- ---------------------------------------------------

-- hóspedes
DROP TABLE IF EXISTS hospede CASCADE;
CREATE TABLE hospede (
  cpf            VARCHAR(11),
  nome           VARCHAR(100),
  sobrenome      VARCHAR(100),
  datanascimento DATE,
  sexo           CHAR(1),
  endereco       TEXT,
  telefone       VARCHAR(20),
  email          VARCHAR(255),
  senha          VARCHAR(255)
);

-- locadores
DROP TABLE IF EXISTS locador CASCADE;
CREATE TABLE locador (
  cpf            VARCHAR(11),
  nome           VARCHAR(100),
  sobrenome      VARCHAR(100),
  datanascimento DATE,
  sexo           CHAR(1),
  endereco       TEXT,
  telefone       VARCHAR(20),
  email          VARCHAR(255),
  senha          VARCHAR(255)
);

-- localizações
DROP TABLE IF EXISTS localizacao CASCADE;
CREATE TABLE localizacao (
  id_localizacao INTEGER,
  cidade         VARCHAR(100),
  estado         VARCHAR(100),
  pais           VARCHAR(100),
  cep            VARCHAR(20),
  bairro         VARCHAR(100)
);

-- propriedades
DROP TABLE IF EXISTS propriedade CASCADE;
CREATE TABLE propriedade (
  id_propriedade  SERIAL,
  nome            VARCHAR(100),
  tipo            VARCHAR(50),
  endereco        TEXT,
  nbanheiros      INTEGER,
  nquartos        INTEGER,
  preco_noite     NUMERIC(10,2),
  noite_min       INTEGER,
  noite_max       INTEGER,
  maxhospedes     INTEGER,
  checkin         TIME,
  checkout        TIME,
  taxalimpeza     NUMERIC(10,2),
  cpf_locador     VARCHAR(11),
  id_localizacao  INTEGER
);

-- contas bancárias
DROP TABLE IF EXISTS contabancaria CASCADE;
CREATE TABLE contabancaria (
  numconta     VARCHAR(50),
  agencia      VARCHAR(20),
  tipo         VARCHAR(50),
  cpf_locador  VARCHAR(11)
);

-- quartos (entidade fraca)
DROP TABLE IF EXISTS quarto CASCADE;
CREATE TABLE quarto (
  id_propriedade    INTEGER,
  numero            INTEGER,
  ncamas            INTEGER,
  tipocama          VARCHAR(50),
  banheiroprivativo BOOLEAN
);

-- reservas
DROP TABLE IF EXISTS reserva CASCADE;
CREATE TABLE reserva (
  id_reserva     SERIAL,
  datareserva    DATE,
  checkin        DATE,
  checkout       DATE,
  nhospedes      INTEGER,
  imposto        NUMERIC(10,2),
  precototal     NUMERIC(10,2),
  precocomtaxa   NUMERIC(10,2),
  status         VARCHAR(20),
  id_propriedade INTEGER,
  cpf_hospede    VARCHAR(11)
);

-- avaliações
DROP TABLE IF EXISTS avaliacao CASCADE;
CREATE TABLE avaliacao (
  id_avaliacao   SERIAL,
  avlimpeza      INTEGER,
  avestrutura    INTEGER,
  avcomunicacao  INTEGER,
  id_localizacao INTEGER,
  valor          INTEGER
);

-- mensagens
DROP TABLE IF EXISTS mensagem CASCADE;
CREATE TABLE mensagem (
  id_mensagem SERIAL,   -- poderia ser INTEGER, mas o serial é mais poggers por auto-incrementar 
  timestamp    TIMESTAMP,
  texto        TEXT,
  cpf_hospede  VARCHAR(11)
);

-- fotos de avaliação
DROP TABLE IF EXISTS foto CASCADE;
CREATE TABLE foto (
  url           TEXT,
  id_avaliacao  INTEGER
);

-- comodidades
DROP TABLE IF EXISTS comodidade CASCADE;
CREATE TABLE comodidade (
  id_comodidade SERIAL,
  nome VARCHAR(100)
);

-- regras
DROP TABLE IF EXISTS regra CASCADE;
CREATE TABLE regra (
  id_regra SERIAL, 
  tipo      VARCHAR(50),
  permitido BOOLEAN
);

-- pontos de interesse
DROP TABLE IF EXISTS pontointeresse CASCADE;
CREATE TABLE pontointeresse (
  nome           VARCHAR(100),
  id_localizacao INTEGER
);

-- conversas (locador ↔ hóspede)
DROP TABLE IF EXISTS conversa CASCADE;
CREATE TABLE conversa (
  cpf_locador VARCHAR(11),
  cpf_hospede VARCHAR(11)
);

-- ---------------------------------------------------
-- 3) Tabelas associativas para N:M
-- ---------------------------------------------------

-- cada propriedade pode ter várias comodidades
DROP TABLE IF EXISTS propriedade_comodidade CASCADE;
CREATE TABLE propriedade_comodidade (
  id_propriedade   INTEGER,
  nome_comodidade  VARCHAR(100)
);

-- cada propriedade pode ter várias regras
DROP TABLE IF EXISTS propriedade_regra CASCADE;
CREATE TABLE propriedade_regra (
  id_propriedade INTEGER,
  id_regra       INTEGER
);
