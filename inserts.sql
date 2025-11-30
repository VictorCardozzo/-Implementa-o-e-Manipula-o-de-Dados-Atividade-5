-- inserts.sql

USE gymfit;

-- MEMBRO
INSERT INTO MEMBRO (Nome, CPF, DataNascimento, Telefone, Email) VALUES
('Lucas Andrade', '111.222.333-44', '1995-04-12', '11995553333', 'lucas@gmail.com'),
('Marina Silva', '222.333.444-55', '1998-09-02', '11997774422', 'marina@gmail.com'),
('Ana Pereira', '333.444.555-66', '1990-11-20', '11998889999', 'ana.pereira@gmail.com');

-- TREINADOR
INSERT INTO TREINADOR (Nome, CPF, Especialidade, Email) VALUES
('Carlos Monteiro', '555.666.777-88', 'Musculação', 'carlos@gym.com'),
('João Pires', '999.888.777-66', 'Crossfit', 'joao@gym.com');

-- PLANO
INSERT INTO PLANO (Nome, PrecoMensal, DuracaoMeses) VALUES
('Mensal', 120.00, 1),
('Trimestral', 300.00, 3),
('Anual', 1000.00, 12);

-- CLASSE
INSERT INTO CLASSE (Nome, Horario, Duracao, Sala) VALUES
('Musculação', '08:00:00', 60, 'Sala 1'),
('Crossfit', '10:00:00', 50, 'Sala 2'),
('Yoga', '18:00:00', 60, 'Sala 3');

-- TURMA
INSERT INTO TURMA (ClasseID, TreinadorID, DataInicio) VALUES
(1, 1, '2024-01-10'),
(2, 2, '2024-01-15'),
(3, 1, '2024-02-01');

-- EQUIPAMENTO
INSERT INTO EQUIPAMENTO (Nome, Tipo, Status) VALUES
('Esteira', 'Cardio', 'Ativo'),
('Supino Reto', 'Musculação', 'Manutenção'),
('Bicicleta', 'Cardio', 'Ativo');

-- MATRICULA
INSERT INTO MATRICULA (MembroID, TurmaID, DataMatricula, Status) VALUES
(1, 1, '2024-02-01', 'Ativa'),
(2, 2, '2024-02-05', 'Ativa'),
(3, 3, '2024-03-01', 'Ativa');

-- PAGAMENTO
INSERT INTO PAGAMENTO (MembroID, PlanoID, DataPagamento, Valor) VALUES
(1, 1, '2024-02-01', 120.00),
(2, 2, '2024-02-05', 300.00),
(3, 3, '2024-03-01', 1000.00);
