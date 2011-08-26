-- add column for field <IsheAdmin>k__BackingField
ALTER TABLE [usr] ADD [<_ishe_admin>k___backing_field] tinyint NULL
go
UPDATE [usr] SET [<_ishe_admin>k___backing_field] = 0
go
ALTER TABLE [usr] ALTER COLUMN [<_ishe_admin>k___backing_field] tinyint NOT NULL
go

