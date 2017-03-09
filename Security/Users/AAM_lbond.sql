IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'AAM\lbond')
CREATE LOGIN [AAM\lbond] FROM WINDOWS
GO
CREATE USER [AAM\lbond] FOR LOGIN [AAM\lbond]
GO
