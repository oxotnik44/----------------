USE [test]
GO

-- Создание CTE для получения действующих услуг
WITH ActiveServices AS (
    SELECT 
        [Номер договора],
        [Код ТД],
        [Услуга]
    FROM 
        [dbo].[ТД]
    WHERE 
        [deleted] = 'false' -- Фильтрация по состоянию услуги
)

-- Выбор из CTE и группировка данных
SELECT 
    asrv.[Номер договора],
    STRING_AGG(asrv.[Код ТД], ', ') AS [Коды ТД], -- Массив кодов ТД
    STRING_AGG(asrv.[Услуга], ', ') AS [Услуги] -- Массив услуг
FROM 
    ActiveServices AS asrv
GROUP BY 
    asrv.[Номер договора]
ORDER BY 
    asrv.[Номер договора];

GO
