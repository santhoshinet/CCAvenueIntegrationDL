-- CCAvenueIntegrationDL.File
CREATE TABLE [fle] (
    [fle_id] INT NOT NULL,                  -- <internal-pk>
    [<_filedata>k___backing_field] image NULL, -- <Filedata>k__BackingField
    [<_filename>k___backing_field] VARCHAR(255) NULL, -- <Filename>k__BackingField
    [voa_version] SMALLINT NOT NULL,        -- <internal-version>
    CONSTRAINT [pk_fle] PRIMARY KEY ([fle_id])
)
go

-- System.Collections.Generic.IList`1[[CCAvenueIntegrationDL.Product, CCAvenueIntegrationDL, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]] CCAvenueIntegrationDL.PreTransactionDetails.<Products>k__BackingField
CREATE TABLE [pr_transaction_details_product] (
    [pre_transaction_details_id] INT NOT NULL,
    [seq] INT NOT NULL,                     -- <sequence>
    [product_id] INT NULL,
    CONSTRAINT [pk_pr_trnscton_details_product] PRIMARY KEY ([pre_transaction_details_id], [seq])
)
go

-- CCAvenueIntegrationDL.PreTransactionDetails
CREATE TABLE [pre_transaction_details] (
    [pre_transaction_details_id] INT NOT NULL, -- <internal-pk>
    [<_checksum>k___backing_field] VARCHAR(255) NULL, -- <Checksum>k__BackingField
    [<_dbt_nte_id>k___backing_field] VARCHAR(255) NULL, -- <DebitNoteId>k__BackingField
    [<_dscription>k___backing_field] VARCHAR(255) NULL, -- <Description>k__BackingField
    [<_entry_time>k___backing_field] DATETIME NOT NULL, -- <EntryTime>k__BackingField
    [<_nvoice_ids>k___backing_field] VARCHAR(255) NULL, -- <InvoiceIds>k__BackingField
    [<_pymnt_typ_d>k___bcking_field] INT NOT NULL, -- <PaymentTypeId>k__BackingField
    [<_rdrect_url>k___backing_field] VARCHAR(255) NULL, -- <RedirectUrl>k__BackingField
    [<_sllng_crrncy_mnt>k___bckng_f] FLOAT NOT NULL, -- <SellingCurrencyAmount>k__BackingField
    [<_trnsctn_id>k___backing_field] VARCHAR(255) NULL, -- <TransactionId>k__BackingField
    [<_trnsctn_stts>k___bckng_field] INT NOT NULL, -- <TransactionStatus>k__BackingField
    [<_trnsctn_typ>k___bcking_field] INT NOT NULL, -- <TransactionType>k__BackingField
    [voa_version] SMALLINT NOT NULL,        -- <internal-version>
    CONSTRAINT [pk_pre_transaction_details] PRIMARY KEY ([pre_transaction_details_id])
)
go

-- CCAvenueIntegrationDL.Product
CREATE TABLE [product] (
    [product_id] INT NOT NULL,              -- <internal-pk>
    [<_category>k___backing_field] VARCHAR(255) NULL, -- <Category>k__BackingField
    [<_id>k___backing_field] UNIQUEIDENTIFIER NULL, -- <Id>k__BackingField
    [<_name>k___backing_field] VARCHAR(255) NULL, -- <Name>k__BackingField
    [<_price>k___backing_field] FLOAT NOT NULL, -- <Price>k__BackingField
    [fle_id] INT NULL,                      -- <Productfile>k__BackingField
    [<_quanity>k___backing_field] INT NOT NULL, -- <Quanity>k__BackingField
    [voa_version] SMALLINT NOT NULL,        -- <internal-version>
    CONSTRAINT [pk_product] PRIMARY KEY ([product_id])
)
go

