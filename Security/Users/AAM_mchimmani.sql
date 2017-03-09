IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'AAM\mchimmani')
CREATE LOGIN [AAM\mchimmani] FROM WINDOWS
GO
CREATE USER [AAM\mchimmani] FOR LOGIN [AAM\mchimmani]
GO
