DECLARE @DT AS DATETIME,
		@D AS DATE, 
		@T AS TIME, 
		@DSTR AS VARCHAR(100), 
		@TSTR AS VARCHAR(100)

SET @DT = '2022-06-24 14:56:21'
SET @D = @DT--DATE
SET @T = @DT--TIME
SET @DSTR = CONVERT(varchar,@DT,104)
SET @TSTR = CONVERT(VARCHAR,@DT,108)

SELECT @DT DT, @D D, @T T, @DSTR DSTR, @TSTR TSTR

