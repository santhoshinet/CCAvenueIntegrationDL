-- CCAvenueIntegrationDL.PreTransactionDetails
CREATE TABLE [pre_transaction_details] (
    [pre_transaction_details_id] INT NOT NULL, -- <internal-pk>
    [<_ccntng_crrncy_mnt>k___bckng_] FLOAT NOT NULL, -- <AccountingCurrencyAmount>k__BackingField
    [<_address>k___backing_field] VARCHAR(255) NULL, -- <Address>k__BackingField
    [<_checksum>k___backing_field] VARCHAR(255) NULL, -- <Checksum>k__BackingField
    [<_city>k___backing_field] VARCHAR(255) NULL, -- <City>k__BackingField
    [<_company>k___backing_field] VARCHAR(255) NULL, -- <Company>k__BackingField
    [<_country>k___backing_field] VARCHAR(255) NULL, -- <Country>k__BackingField
    [<_dbt_nte_id>k___backing_field] VARCHAR(255) NULL, -- <DebitNoteId>k__BackingField
    [<_dscription>k___backing_field] VARCHAR(255) NULL, -- <Description>k__BackingField
    [<_email>k___backing_field] VARCHAR(255) NULL, -- <Email>k__BackingField
    [<_entry_time>k___backing_field] DATETIME NOT NULL, -- <EntryTime>k__BackingField
    [<_faxno>k___backing_field] VARCHAR(255) NULL, -- <Faxno>k__BackingField
    [<_nvoice_ids>k___backing_field] VARCHAR(255) NULL, -- <InvoiceIds>k__BackingField
    [<_pymnt_typ_d>k___bcking_field] INT NOT NULL, -- <PaymentTypeId>k__BackingField
    [<_rdrect_url>k___backing_field] VARCHAR(255) NULL, -- <RedirectUrl>k__BackingField
    [<_sllng_crrncy_mnt>k___bckng_f] FLOAT NOT NULL, -- <SellingCurrencyAmount>k__BackingField
    [<_state>k___backing_field] VARCHAR(255) NULL, -- <State>k__BackingField
    [<_telno>k___backing_field] VARCHAR(255) NULL, -- <Telno>k__BackingField
    [<_telno_cc>k___backing_field] VARCHAR(255) NULL, -- <TelnoCc>k__BackingField
    [<_trnsctn_id>k___backing_field] VARCHAR(255) NULL, -- <TransactionId>k__BackingField
    [<_trnsctn_typ>k___bcking_field] INT NOT NULL, -- <TransactionType>k__BackingField
    [<_user_type>k___backing_field] INT NOT NULL, -- <UserType>k__BackingField
    [<_username>k___backing_field] VARCHAR(255) NULL, -- <Username>k__BackingField
    [<_zip>k___backing_field] VARCHAR(255) NULL, -- <Zip>k__BackingField
    [voa_version] SMALLINT NOT NULL,        -- <internal-version>
    CONSTRAINT [pk_pre_transaction_details] PRIMARY KEY ([pre_transaction_details_id])
)
go

-- OpenAccessRuntime.Relational.sql.HighLowRelationalKeyGenerator
CREATE TABLE [voa_keygen] (
    [table_name] VARCHAR(64) NOT NULL,
    [last_used_id] INT NOT NULL,
    CONSTRAINT [pk_voa_keygen] PRIMARY KEY ([table_name])
)
go

