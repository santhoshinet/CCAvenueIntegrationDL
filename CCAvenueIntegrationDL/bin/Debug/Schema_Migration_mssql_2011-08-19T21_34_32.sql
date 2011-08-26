-- add column for field <Deletedstatus>k__BackingField
ALTER TABLE [product] ADD [<_dltdstatus>k___backing_field] INT NULL
go
UPDATE [product] SET [<_dltdstatus>k___backing_field] = 0
go
ALTER TABLE [product] ALTER COLUMN [<_dltdstatus>k___backing_field] INT NOT NULL
go

