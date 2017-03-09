IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'AAM\admin.mac')
CREATE LOGIN [AAM\admin.mac] FROM WINDOWS
GO
CREATE USER [AAM\admin.mac] FOR LOGIN [AAM\admin.mac]
GO
