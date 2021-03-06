USE [buscador_development]
GO
/****** Object:  UserDefinedFunction [dbo].[fnSplitString]    Script Date: 10/04/2015 05:50:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[fnSplitString] 
( 
    @string NVARCHAR(255), 
    @delimiter CHAR(1),
	@numero_base NVARCHAR(255) 
) 
RETURNS NVARCHAR(255) 
BEGIN
	DECLARE @cadena NVARCHAR(255) 
    DECLARE @start INT, @end INT 
    SELECT @start = 1, @end = CHARINDEX(@delimiter, @string)
	SET @cadena='' 
    WHILE @start < LEN(@string) + 1 BEGIN        
		
		IF @end = 0
		BEGIN
			SET @cadena = @cadena + CAST(CAST(SUBSTRING(@string, @start, LEN(@string)) AS INT) + @numero_base AS NVARCHAR) 
			BREAK
		END
		ELSE
			SET @cadena = @cadena + CAST(CAST(SUBSTRING(@string, @start, @end - @start) AS INT) + @numero_base AS NVARCHAR) + '/'

		SET @start = @end + 1 
		SET @end = CHARINDEX(@delimiter, @string, @start) 
        
    END 
    RETURN @cadena
END