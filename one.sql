ALTER TABLE titles ADD tax_rate DECIMAL(4,2);
GO
UPDATE titles SET tax_rate = 12;

