-- add column for field <Categorytype>k__BackingField
ALTER TABLE [category] ADD [<_ctgorytype>k___backing_field] INT NULL
go
UPDATE [category] SET [<_ctgorytype>k___backing_field] = 0
go
ALTER TABLE [category] ALTER COLUMN [<_ctgorytype>k___backing_field] INT NOT NULL
go

