DECLARE @Counter INT = 0

-- WHILE loop with a condition
WHILE @Counter < 10
BEGIN
    -- IF condition inside the WHILE loop
    IF @Counter % 2 = 0
    BEGIN
        PRINT 'Counter is even: ' + CAST(@Counter AS NVARCHAR(10))
    END
    ELSE
    BEGIN
        PRINT 'Counter is odd:  ' + CAST(@Counter AS NVARCHAR(10))
    END
    
    -- Increment the counter
    SET @Counter = @Counter + 1
END
