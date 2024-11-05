CREATE DATABASE clinica;

CREATE TABLE pacientes(
    id_paciente SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(130) UNIQUE NOT NULL
);

SELECT * FROM pacientes;

CREATE TABLE medicos(
    id_medico SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100) NOT NULL,
);

SELECT * FROM medicos;

