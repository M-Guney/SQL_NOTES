-->LOOPS

--GO
		SELECT 1
		GO 10
		-- 10 TANE 1 D�YE TERMINAL A�AR

		USE TEST
		INSERT INTO DATE_ VALUES(GETDATE())
		GO 5
		SELECT * FROM DATE_
		/**
		1	2024-05-24
		2	2024-05-24
		3	2024-05-24
		4	2024-05-24
		5	2024-05-24
		*/
--WHILE
		DECLARE @I AS INT =0
		WHILE @I<10
		BEGIN
			INSERT INTO DATE_ VALUES (GETDATE())
			SET @I=@I+1
		END
		SELECT @I
		--Output: 10

		--SONSUZ DONGUYE DE ALINABILINIR
		WHILE 1=1
		BEGIN
		PRINT'Muhammed S�leyman G�ney'
		END

