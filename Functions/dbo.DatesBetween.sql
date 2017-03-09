SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[DatesBetween](@startDate date, @endDate date)
RETURNS @dates TABLE (
   DateValue date NOT NULL
) 
AS
BEGIN
   WHILE (@startDate <= @endDate) BEGIN
      INSERT INTO @dates VALUES (@startDate);
      SET @startDate = DATEADD(day, 1, @startDate);
   END;
   
   RETURN;
END;
GO
