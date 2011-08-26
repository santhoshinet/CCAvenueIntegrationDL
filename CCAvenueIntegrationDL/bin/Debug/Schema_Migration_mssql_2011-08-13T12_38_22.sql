-- add column for field <BillingAddress>k__BackingField
ALTER TABLE [usr] ADD [<_bllng_ddrss>k___bcking_field] VARCHAR(255) NULL
go

-- add column for field <BillingCity>k__BackingField
ALTER TABLE [usr] ADD [<_bllng_city>k___backing_field] VARCHAR(255) NULL
go

-- add column for field <BillingCountry>k__BackingField
ALTER TABLE [usr] ADD [<_bllng_cntry>k___bcking_field] VARCHAR(255) NULL
go

-- add column for field <BillingFaxno>k__BackingField
ALTER TABLE [usr] ADD [<_bllng_fxno>k___backing_field] VARCHAR(255) NULL
go

-- add column for field <BillingPin>k__BackingField
ALTER TABLE [usr] ADD [<_blling_pin>k___backing_field] VARCHAR(255) NULL
go

-- add column for field <BillingState>k__BackingField
ALTER TABLE [usr] ADD [<_bllng_stte>k___backing_field] VARCHAR(255) NULL
go

-- add column for field <DeliveryAddress>k__BackingField
ALTER TABLE [usr] ADD [<_dlvry_ddrss>k___bcking_field] VARCHAR(255) NULL
go

-- add column for field <DeliveryCity>k__BackingField
ALTER TABLE [usr] ADD [<_dlvry_city>k___backing_field] VARCHAR(255) NULL
go

-- add column for field <DeliveryCountry>k__BackingField
ALTER TABLE [usr] ADD [<_dlvry_cntry>k___bcking_field] VARCHAR(255) NULL
go

-- add column for field <DeliveryPin>k__BackingField
ALTER TABLE [usr] ADD [<_dlvery_pin>k___backing_field] VARCHAR(255) NULL
go

-- add column for field <DeliveryState>k__BackingField
ALTER TABLE [usr] ADD [<_dlvry_stte>k___backing_field] VARCHAR(255) NULL
go

-- dropping unknown column [<_address>k___backing_field]
ALTER TABLE [usr] DROP COLUMN [<_address>k___backing_field]
go

-- dropping unknown column [<_city>k___backing_field]
ALTER TABLE [usr] DROP COLUMN [<_city>k___backing_field]
go

-- dropping unknown column [<_country>k___backing_field]
ALTER TABLE [usr] DROP COLUMN [<_country>k___backing_field]
go

-- dropping unknown column [<_faxno>k___backing_field]
ALTER TABLE [usr] DROP COLUMN [<_faxno>k___backing_field]
go

-- dropping unknown column [<_state>k___backing_field]
ALTER TABLE [usr] DROP COLUMN [<_state>k___backing_field]
go

-- dropping unknown column [<_zip>k___backing_field]
ALTER TABLE [usr] DROP COLUMN [<_zip>k___backing_field]
go

