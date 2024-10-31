USE [test]
GO

SELECT [Номер договора],[Код ТД] ,[deleted], [Услуга] FROM [dbo].[ТД] WHERE [Ссылка на пакет] IS NOT NULL

GO


