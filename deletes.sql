-- deletes.sql
USE gymfit;

-- 1) Remover matrícula específica (condição)
DELETE FROM MATRICULA WHERE MatriculaID = 2;

-- 2) Remover pagamento com ID específico
DELETE FROM PAGAMENTO WHERE PagamentoID = 2;

-- 3) Remover equipamento que está obsoleto (exemplo)
DELETE FROM EQUIPAMENTO WHERE EquipID = 2;
