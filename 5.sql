USE [test]
GO

SELECT * 
FROM [dbo].[ТД] AS td
LEFT JOIN [dbo].[E-mail] AS email ON td.[Номер договора] = email.[Номер договора]
WHERE email.[E-mail] IS NULL
GO
