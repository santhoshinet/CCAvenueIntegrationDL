-- CCAvenueIntegrationDL.File
CREATE TABLE [fle] (
    [fle_id] INT NOT NULL,                  -- <internal-pk>
    [<_filedata>k___backing_field] image NULL, -- <Filedata>k__BackingField
    [<_filename>k___backing_field] VARCHAR(255) NULL, -- <Filename>k__BackingField
    [voa_version] SMALLINT NOT NULL,        -- <internal-version>
    CONSTRAINT [pk_fle] PRIMARY KEY ([fle_id])
)
go

-- add column for field <Category>k__BackingField
ALTER TABLE [product] ADD [<_category>k___backing_field] VARCHAR(255) NULL
go

-- add column for field <Id>k__BackingField
ALTER TABLE [product] ADD [<_id>k___backing_field] UNIQUEIDENTIFIER NULL
go

-- add column for field <Productfile>k__BackingField
ALTER TABLE [product] ADD [fle_id] INT NULL
go

