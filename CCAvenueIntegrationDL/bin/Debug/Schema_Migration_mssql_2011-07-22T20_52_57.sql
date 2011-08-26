-- add column for field <TransactionStatus>k__BackingField
ALTER TABLE [pre_transaction_details] ADD [<_trnsctn_stts>k___bckng_field] INT NULL
go
UPDATE [pre_transaction_details] SET [<_trnsctn_stts>k___bckng_field] = 0
go
ALTER TABLE [pre_transaction_details] ALTER COLUMN [<_trnsctn_stts>k___bckng_field] INT NOT NULL
go

