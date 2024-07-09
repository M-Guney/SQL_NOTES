use TSQL_LAB_UDF
SELECT ID,PLAYER_NAME,BIRTHDATE,dbo.YAS(BIRTHDATE,ID) as AGE FROM PLAYER

ALTER FUNCTION dbo.YAS(@DATE AS DATE,@INDEX AS INT)
RETURNS INT
AS
BEGIN
	DECLARE @RESULT AS INT
		SELECT @RESULT = DATEDIFF(YEAR,BIRTHDATE,GETDATE()) FROM PLAYER
			WHERE ID= @INDEX
		RETURN @RESULT		
END