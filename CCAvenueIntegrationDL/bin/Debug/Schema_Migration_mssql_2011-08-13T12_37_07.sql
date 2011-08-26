-- add column for field <Address>k__BackingField
ALTER TABLE [usr] ADD [<_address>k___backing_field] VARCHAR(255) NULL
go

-- add column for field <City>k__BackingField
ALTER TABLE [usr] ADD [<_city>k___backing_field] VARCHAR(255) NULL
go

-- add column for field <Country>k__BackingField
ALTER TABLE [usr] ADD [<_country>k___backing_field] VARCHAR(255) NULL
go

-- add column for field <Faxno>k__BackingField
ALTER TABLE [usr] ADD [<_faxno>k___backing_field] VARCHAR(255) NULL
go

-- add column for field <State>k__BackingField
ALTER TABLE [usr] ADD [<_state>k___backing_field] VARCHAR(255) NULL
go

-- add column for field <Zip>k__BackingField
ALTER TABLE [usr] ADD [<_zip>k___backing_field] VARCHAR(255) NULL
go

-- dropping unknown column [<_bllng_ddrss>k___bcking_field]
ALTER TABLE [usr] DROP COLUMN [<_bllng_ddrss>k___bcking_field]
go

-- dropping unknown column [<_bllng_city>k___backing_field]
ALTER TABLE [usr] DROP COLUMN [<_bllng_city>k___backing_field]
go

-- dropping unknown column [<_bllng_cntry>k___bcking_field]
ALTER TABLE [usr] DROP COLUMN [<_bllng_cntry>k___bcking_field]
go

-- dropping unknown column [<_bllng_fxno>k___backing_field]
ALTER TABLE [usr] DROP COLUMN [<_bllng_fxno>k___backing_field]
go

-- dropping unknown column [<_blling_pin>k___backing_field]
ALTER TABLE [usr] DROP COLUMN [<_blling_pin>k___backing_field]
go

-- dropping unknown column [<_bllng_stte>k___backing_field]
ALTER TABLE [usr] DROP COLUMN [<_bllng_stte>k___backing_field]
go

-- dropping unknown column [<_dlvry_ddrss>k___bcking_field]
ALTER TABLE [usr] DROP COLUMN [<_dlvry_ddrss>k___bcking_field]
go

-- dropping unknown column [<_dlvry_city>k___backing_field]
ALTER TABLE [usr] DROP COLUMN [<_dlvry_city>k___backing_field]
go

-- dropping unknown column [<_dlvry_cntry>k___bcking_field]
ALTER TABLE [usr] DROP COLUMN [<_dlvry_cntry>k___bcking_field]
go

-- dropping unknown column [<_dlvery_pin>k___backing_field]
ALTER TABLE [usr] DROP COLUMN [<_dlvery_pin>k___backing_field]
go

-- dropping unknown column [<_dlvry_stte>k___backing_field]
ALTER TABLE [usr] DROP COLUMN [<_dlvry_stte>k___backing_field]
go

