-- add column for field <Deletedstatus>k__BackingField
ALTER TABLE [category] ADD [<_dltdstatus>k___backing_field] INT NULL
go
UPDATE [category] SET [<_dltdstatus>k___backing_field] = 0
go
ALTER TABLE [category] ALTER COLUMN [<_dltdstatus>k___backing_field] INT NOT NULL
go

