-- Создание временной таблицы
CREATE TABLE #TempEmployees (
    EmployeeID INT,
    EmployeeName NVARCHAR(100)
);

-- Вставка данных во временную таблицу
INSERT INTO #TempEmployees (EmployeeID, EmployeeName)
VALUES (1, 'Иван'),
       (2, 'Петр'),
       (3, 'Светлана');

-- Выбор данных из временной таблицы
SELECT * FROM #TempEmployees;

-- Удаление временной таблицы (опционально, она будет удалена автоматически после завершения сессии)
DROP TABLE #TempEmployees;
