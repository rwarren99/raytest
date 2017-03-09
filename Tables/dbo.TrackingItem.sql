CREATE TABLE [dbo].[TrackingItem]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Issued] [date] NOT NULL,
[Category] [int] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [X_TrackingItem_Issued] ON [dbo].[TrackingItem] ([Issued]) ON [PRIMARY]
GO
