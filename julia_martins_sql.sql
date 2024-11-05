CREATE DATABASE clinica;

\c clinica

CREATE TABLE pacientes(
    id_paciente SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(130) UNIQUE NOT NULL
);

SELECT * FROM pacientes;

CREATE TABLE medicos(
    id_medico SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100) NOT NULL
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
('Dr. Ricardo', 'Homeopata'),
('Dr. Vitor', 'Neurologista'),
('Dra. Maria', 'Ortopedista');


SELECT * FROM medicos;

CREATE TABLE consultas(
    id_consulta SERIAL PRIMARY KEY,
    id_paciente INT NOT NULL,
    id_medico INT NOT NULL,
    tipo_consulta VARCHAR(100) ,    
    data_consulta DATE,
    CONSTRAINT fk_paciente FOREIGN KEY (id_paciente) REFERENCES pacientes(id_paciente),
    CONSTRAINT fk_medico FOREIGN KEY (id_medico) REFERENCES medicos(id_medico)
);

SELECT * FROM consultas;

INSERT INTO consultas (id_paciente, id_medico, tipo_consulta, data_consulta) VALUES
(5, 1, 'Cardiologista', '2024-10-10'),
(2, 3, 'Homeopata', '2024-10-25'),
(3, 2, 'Dermatologista','2024-11-01'),
(1, 4, 'Neurologista', '2024-11-08');

INSERT INTO consultas (id_paciente, id_medico) VALUES
(4, 5);

SELECT
p.nome AS nome_paciente,
m.nome AS nome_medico,
c.tipo_consulta AS tipo_consulta,
c.data_consulta AS data_consulta
FROM consultas c
INNER JOIN pacientes p ON c.id_paciente = p.id_paciente
INNER JOIN medicos m ON c.id_medico = m.id_medico
WHERE c.data_consulta < '2024-11-06';

SELECT
p.nome AS nome_paciente,
c.tipo_consulta AS tipo_consulta,
c.data_consulta AS data_consulta
FROM consultas c
INNER JOIN pacientes p ON c.id_paciente = p.id_paciente
INNER JOIN medicos m ON c.id_medico = m.id_medico
WHERE c.data_consulta IS NULL;


SELECT
m.nome AS nome_medico,
c.tipo_consulta AS tipo_consulta,
c.data_consulta AS data_consulta
FROM consultas c
INNER JOIN pacientes p ON c.id_paciente = p.id_paciente
INNER JOIN medicos m ON c.id_medico = m.id_medico
WHERE c.data_consulta IS NULL;










