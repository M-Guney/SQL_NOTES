/**
SELECT TOP 100 * FROM USERS WHERE ID =146637 
SELECT TOP 100 * FROM Comments   --USERID 
SELECT TOP 100 * FROM POSTS
*/
ALTER FUNCTION dbo.FNGROUP
(
    @USERID INT
)
RETURNS 
@RESULT TABLE
(
    COMMENTCOUNT INT,
    POSTCOUNT INT,
    USERTYPE VARCHAR(100)
)
AS
BEGIN
    DECLARE @COMMENTCOUNT INT;
    DECLARE @POSTCOUNT INT;
    DECLARE @USERTYPE VARCHAR(100);

    -- Calculate comment count
    SELECT @COMMENTCOUNT = COUNT(*)  FROM Comments  WHERE UserId = @USERID;

    -- Calculate post count
    SELECT @POSTCOUNT = COUNT(*)  FROM POSTS WHERE OwnerUserId = @USERID;

    -- Get user type
    IF  @COMMENTCOUNT > @POSTCOUNT
		SET @USERTYPE = 'YORUMCU'
	IF @COMMENTCOUNT < @POSTCOUNT
		SET @USERTYPE = 'YAZAR'

    -- Insert results into the table variable
    INSERT INTO @RESULT (COMMENTCOUNT, POSTCOUNT, USERTYPE)
    VALUES (@COMMENTCOUNT, @POSTCOUNT, @USERTYPE);

    RETURN;
END
GO

SELECT TOP 10 *,FNGROUP.COMMENTCOUNT,FNGROUP.POSTCOUNT,FNGROUP.USERTYPE FROM USERS U
CROSS APPLY(SELECT * FROM dbo.FNGROUP(U.ID))FNGROUP 