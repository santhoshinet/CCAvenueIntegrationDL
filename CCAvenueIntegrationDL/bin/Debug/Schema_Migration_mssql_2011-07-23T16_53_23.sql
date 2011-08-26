-- add column for field <User>k__BackingField
ALTER TABLE [pre_transaction_details] ADD [usr_id] INT NULL
go

-- dropping unknown column [<_address>k___backing_field]
ALTER TABLE [pre_transaction_details] DROP COLUMN [<_address>k___backing_field]
go

-- dropping unknown column [<_city>k___backing_field]
ALTER TABLE [pre_transaction_details] DROP COLUMN [<_city>k___backing_field]
go

-- dropping unknown column [<_country>k___backing_field]
ALTER TABLE [pre_transaction_details] DROP COLUMN [<_country>k___backing_field]
go

-- dropping unknown column [<_email>k___backing_field]
ALTER TABLE [pre_transaction_details] DROP COLUMN [<_email>k___backing_field]
go

-- dropping unknown column [<_faxno>k___backing_field]
ALTER TABLE [pre_transaction_details] DROP COLUMN [<_faxno>k___backing_field]
go

-- dropping unknown column [<_state>k___backing_field]
ALTER TABLE [pre_transaction_details] DROP COLUMN [<_state>k___backing_field]
go

-- dropping unknown column [<_username>k___backing_field]
ALTER TABLE [pre_transaction_details] DROP COLUMN [<_username>k___backing_field]
go

-- dropping unknown column [<_zip>k___backing_field]
ALTER TABLE [pre_transaction_details] DROP COLUMN [<_zip>k___backing_field]
go

-- dropping unknown column [<_mobileno>k___backing_field]
ALTER TABLE [pre_transaction_details] DROP COLUMN [<_mobileno>k___backing_field]
go

-- CCAvenueIntegrationDL.User
CREATE TABLE [usr] (
    [usr_id] INT NOT NULL,                  -- <internal-pk>
    [<_address>k___backing_field] VARCHAR(255) NULL, -- <Address>k__BackingField
    [<_city>k___backing_field] VARCHAR(255) NULL, -- <City>k__BackingField
    [<_country>k___backing_field] VARCHAR(255) NULL, -- <Country>k__BackingField
    [<_email>k___backing_field] VARCHAR(255) NULL, -- <Email>k__BackingField
    [<_faxno>k___backing_field] VARCHAR(255) NULL, -- <Faxno>k__BackingField
    [<_hshd_psswrd>k___bcking_field] VARCHAR(255) NULL, -- <HashedPassword>k__BackingField
    [<_mobileno>k___backing_field] VARCHAR(255) NULL, -- <Mobileno>k__BackingField
    [<_psswrd_slt>k___backing_field] VARCHAR(255) NULL, -- <PasswordSalt>k__BackingField
    [<_state>k___backing_field] VARCHAR(255) NULL, -- <State>k__BackingField
    [<_username>k___backing_field] VARCHAR(255) NULL, -- <Username>k__BackingField
    [<_zip>k___backing_field] VARCHAR(255) NULL, -- <Zip>k__BackingField
    [voa_version] SMALLINT NOT NULL,        -- <internal-version>
    CONSTRAINT [pk_usr] PRIMARY KEY ([usr_id])
)
go

-- System.Collections.Generic.IList`1[[CCAvenueIntegrationDL.PreTransactionDetails, CCAvenueIntegrationDL, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]] CCAvenueIntegrationDL.User.<PreTransactionDetailses>k__BackingField
CREATE TABLE [usr_pre_transaction_details] (
    [usr_id] INT NOT NULL,
    [seq] INT NOT NULL,                     -- <sequence>
    [pre_transaction_details_id] INT NULL,
    CONSTRAINT [pk_usr_pre_transaction_details] PRIMARY KEY ([usr_id], [seq])
)
go

ALTER TABLE [usr_pre_transaction_details] ADD CONSTRAINT [ref_usr_pr_trnsctn_details_usr] FOREIGN KEY ([usr_id]) REFERENCES [usr]([usr_id])
go

ALTER TABLE [usr_pre_transaction_details] ADD CONSTRAINT [ref_usr_pr_trnsctn_dtls_pr_trn] FOREIGN KEY ([pre_transaction_details_id]) REFERENCES [pre_transaction_details]([pre_transaction_details_id])
go

