-- selects.sql
USE gymfit;

-- 1) Listar membros ordenados alfabeticamente
SELECT Nome, Email FROM MEMBRO ORDER BY Nome;

-- 2) Membros matriculados na classe "Musculação" (JOIN)
SELECT M.Nome AS Membro, C.Nome AS Classe, T.TurmaID
FROM MATRICULA MT
JOIN MEMBRO M ON M.MembroID = MT.MembroID
JOIN TURMA T ON T.TurmaID = MT.TurmaID
JOIN CLASSE C ON C.ClasseID = T.ClasseID
WHERE C.Nome = 'Musculação';

-- 3) Pagamentos acima de R$150 com nome do membro
SELECT M.Nome, P.Valor, P.DataPagamento
FROM PAGAMENTO P
JOIN MEMBRO M ON M.MembroID = P.MembroID
WHERE P.Valor > 150
ORDER BY P.Valor DESC;

-- 4) Equipamentos em manutenção
SELECT Nome, Tipo FROM EQUIPAMENTO WHERE Status = 'Manutenção';

-- 5) Mostrar últimas N matrículas (LIMIT)
SELECT * FROM MATRICULA ORDER BY DataMatricula DESC LIMIT 2;
