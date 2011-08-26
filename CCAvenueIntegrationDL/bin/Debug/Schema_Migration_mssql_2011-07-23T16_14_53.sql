-- add column for field <Mobileno>k__BackingField
ALTER TABLE [pre_transaction_details] ADD [<_mobileno>k___backing_field] VARCHAR(255) NULL
go

-- dropping unknown column [<_ccntng_crrncy_mnt>k___bckng_]
ALTER TABLE [pre_transaction_details] DROP COLUMN [<_ccntng_crrncy_mnt>k___bckng_]
go

-- dropping unknown column [<_company>k___backing_field]
ALTER TABLE [pre_transaction_details] DROP COLUMN [<_company>k___backing_field]
go

-- dropping unknown column [<_telno>k___backing_field]
ALTER TABLE [pre_transaction_details] DROP COLUMN [<_telno>k___backing_field]
go

-- dropping unknown column [<_telno_cc>k___backing_field]
ALTER TABLE [pre_transaction_details] DROP COLUMN [<_telno_cc>k___backing_field]
go

