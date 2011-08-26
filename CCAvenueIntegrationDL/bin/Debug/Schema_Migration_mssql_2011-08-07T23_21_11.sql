-- add column for field <Categorytype>k__BackingField
ALTER TABLE [category] ADD [<_ctgorytype>k___backing_field] INT NULL
go
UPDATE [category] SET [<_ctgorytype>k___backing_field] = 0
go
ALTER TABLE [category] ALTER COLUMN [<_ctgorytype>k___backing_field] INT NOT NULL
go

-- add column for field <Deletedstatus>k__BackingField
ALTER TABLE [category] ADD [<_dltdstatus>k___backing_field] INT NULL
go
UPDATE [category] SET [<_dltdstatus>k___backing_field] = 0
go
ALTER TABLE [category] ALTER COLUMN [<_dltdstatus>k___backing_field] INT NOT NULL
go

-- add column for field <IsheAdmin>k__BackingField
ALTER TABLE [usr] ADD [<_ishe_admin>k___backing_field] tinyint NULL
go
UPDATE [usr] SET [<_ishe_admin>k___backing_field] = 0
go
ALTER TABLE [usr] ALTER COLUMN [<_ishe_admin>k___backing_field] tinyint NOT NULL
go

