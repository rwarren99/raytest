SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[TrackingItemsModified](@minId int)
RETURNS @trackingItems TABLE (
   Id       int      NOT NULL,
   Issued   date     NOT NULL,
   Category int      NOT NULL,
   Modified datetime NULL
) 
AS
BEGIN
   INSERT INTO @trackingItems (Id, Issued, Category)
   SELECT ti.Id, ti.Issued, ti.Category 
   FROM   TrackingItem ti
   WHERE  ti.Id >= @minId; 
   
   UPDATE @trackingItems
   SET Category = Category + 1,
       Modified = GETDATE()
   WHERE Category%2 = 0;
  
   RETURN;
END;
GO
