-- updates.sql
USE gymfit;

-- 1) Atualizar telefone de um membro
UPDATE MEMBRO SET Telefone = '11990001111' WHERE MembroID = 1;

-- 2) Trocar status de equipamento
UPDATE EQUIPAMENTO SET Status = 'Ativo' WHERE EquipID = 2;

-- 3) Ajustar valor de pagamento (exemplo de correção)
UPDATE PAGAMENTO SET Valor = 130.00 WHERE PagamentoID = 1;
