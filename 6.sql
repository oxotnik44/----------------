USE [test]
GO

SELECT 
    td.[Номер договора],
    STRING_AGG(td.[Код ТД], ', ') AS [Коды ТД],
    STRING_AGG(td.[Услуга], ', ') AS [Услуги]
FROM 
    [dbo].[ТД] AS td
WHERE 
    td.[deleted] = 'false'  
GROUP BY 
    td.[Номер договора]
GO
