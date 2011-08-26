-- CCAvenueIntegrationDL.Category
CREATE TABLE [category] (
    [category_id] INT NOT NULL,             -- <internal-pk>
    [<_ctgorytype>k___backing_field] INT NOT NULL, -- <Categorytype>k__BackingField
    [<_dltdstatus>k___backing_field] INT NOT NULL, -- <Deletedstatus>k__BackingField
    [<_id>k___backing_field] UNIQUEIDENTIFIER NULL, -- <Id>k__BackingField
    [<_name>k___backing_field] VARCHAR(255) NULL, -- <Name>k__BackingField
    [voa_version] SMALLINT NOT NULL,        -- <internal-version>
    CONSTRAINT [pk_category] PRIMARY KEY ([category_id])
)
go

-- System.Collections.Generic.IList`1[[CCAvenueIntegrationDL.Product, CCAvenueIntegrationDL, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]] CCAvenueIntegrationDL.Category.<Products>k__BackingField
CREATE TABLE [category_product] (
    [category_id] INT NOT NULL,
    [seq] INT NOT NULL,                     -- <sequence>
    [product_id] INT NULL,
    CONSTRAINT [pk_category_product] PRIMARY KEY ([category_id], [seq])
)
go

-- CCAvenueIntegrationDL.File
CREATE TABLE [fle] (
    [fle_id] INT NOT NULL,                  -- <internal-pk>
    [<_filedata>k___backing_field] image NULL, -- <Filedata>k__BackingField
    [<_filename>k___backing_field] VARCHAR(255) NULL, -- <Filename>k__BackingField
    [<_i_d>k___backing_field] UNIQUEIDENTIFIER NULL, -- <ID>k__BackingField
    [<_mime_type>k___backing_field] VARCHAR(255) NULL, -- <MimeType>k__BackingField
    [voa_version] SMALLINT NOT NULL,        -- <internal-version>
    CONSTRAINT [pk_fle] PRIMARY KEY ([fle_id])
)
go

-- CCAvenueIntegrationDL.MyCart
CREATE TABLE [my_cart] (
    [my_cart_id] INT NOT NULL,              -- <internal-pk>
    [product_id] INT NULL,                  -- <Product>k__BackingField
    [<_quantity>k___backing_field] INT NOT NULL, -- <Quantity>k__BackingField
    [voa_version] SMALLINT NOT NULL,        -- <internal-version>
    CONSTRAINT [pk_my_cart] PRIMARY KEY ([my_cart_id])
)
go

-- System.Collections.Generic.IList`1[[CCAvenueIntegrationDL.MyCart, CCAvenueIntegrationDL, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]] CCAvenueIntegrationDL.PreTransactionDetails.<MyCarts>k__BackingField
CREATE TABLE [pr_transaction_details_my_cart] (
    [pre_transaction_details_id] INT NOT NULL,
    [seq] INT NOT NULL,                     -- <sequence>
    [my_cart_id] INT NULL,
    CONSTRAINT [pk_pr_trnscton_details_my_cart] PRIMARY KEY ([pre_transaction_details_id], [seq])
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
    [<_dscription>k___backing_field] VARCHAR(255) NULL, -- <Description>k__BackingField
    [<_id>k___backing_field] UNIQUEIDENTIFIER NULL, -- <Id>k__BackingField
    [<_name>k___backing_field] VARCHAR(255) NULL, -- <Name>k__BackingField
    [<_price>k___backing_field] FLOAT NOT NULL, -- <Price>k__BackingField
    [fle_id] INT NULL,                      -- <Productfile>k__BackingField
    [voa_version] SMALLINT NOT NULL,        -- <internal-version>
    CONSTRAINT [pk_product] PRIMARY KEY ([product_id])
)
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
    [<_ishe_admin>k___backing_field] tinyint NOT NULL, -- <IsheAdmin>k__BackingField
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

-- OpenAccessRuntime.Relational.sql.HighLowRelationalKeyGenerator
CREATE TABLE [voa_keygen] (
    [table_name] VARCHAR(64) NOT NULL,
    [last_used_id] INT NOT NULL,
    CONSTRAINT [pk_voa_keygen] PRIMARY KEY ([table_name])
)
go

ALTER TABLE [category_product] ADD CONSTRAINT [ref_category_product_category] FOREIGN KEY ([category_id]) REFERENCES [category]([category_id])
go

ALTER TABLE [category_product] ADD CONSTRAINT [ref_category_product_product] FOREIGN KEY ([product_id]) REFERENCES [product]([product_id])
go

ALTER TABLE [pr_transaction_details_my_cart] ADD CONSTRAINT [ref_pr_trnsctn_dtls_my_crt_pr_] FOREIGN KEY ([pre_transaction_details_id]) REFERENCES [pre_transaction_details]([pre_transaction_details_id])
go

ALTER TABLE [pr_transaction_details_my_cart] ADD CONSTRAINT [ref_pr_trnsctn_dtls_my_crt_my_] FOREIGN KEY ([my_cart_id]) REFERENCES [my_cart]([my_cart_id])
go

ALTER TABLE [usr_pre_transaction_details] ADD CONSTRAINT [ref_usr_pr_trnsctn_details_usr] FOREIGN KEY ([usr_id]) REFERENCES [usr]([usr_id])
go

ALTER TABLE [usr_pre_transaction_details] ADD CONSTRAINT [ref_usr_pr_trnsctn_dtls_pr_trn] FOREIGN KEY ([pre_transaction_details_id]) REFERENCES [pre_transaction_details]([pre_transaction_details_id])
go

