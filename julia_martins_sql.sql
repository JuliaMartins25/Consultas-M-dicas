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

INSERT INTO pacientes (nome, email) VALUES ('Thiago', 'thiago.rodrigues@gmail.com');
INSERT INTO pacientes (nome, email) VALUES ('Felipe', 'felipe.dev@gmail.com');
INSERT INTO pacientes (nome, email) VALUES ('Julia', 'julia.martins@gmail.com');
INSERT INTO pacientes (nome, email) VALUES ('João', 'joao.silva@gmail.com');
INSERT INTO pacientes (nome, email) VALUES ('Pedro', 'pedro.silva@gmail.com');

SELECT * FROM pacientes;

INSERT INTO medicos (nome, especialidade) VALUES 
('Dr. Paulo', 'Cardiologista'),
('Dra. Rita', 'Dermatologista'),
('Dra. Carmen', 'Pediatria'),
('Dr. Ricardo', 'Homeopata'),
('Dr. Vitor', 'Neurologista'),

SELECT * FROM medicos;