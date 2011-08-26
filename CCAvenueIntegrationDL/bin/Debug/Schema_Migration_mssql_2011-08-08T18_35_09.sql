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

-- dropping unknown column [<_quanity>k___backing_field]
ALTER TABLE [product] DROP COLUMN [<_quanity>k___backing_field]
go

ALTER TABLE [pr_transaction_details_my_cart] ADD CONSTRAINT [ref_pr_trnsctn_dtls_my_crt_pr_] FOREIGN KEY ([pre_transaction_details_id]) REFERENCES [pre_transaction_details]([pre_transaction_details_id])
go

ALTER TABLE [pr_transaction_details_my_cart] ADD CONSTRAINT [ref_pr_trnsctn_dtls_my_crt_my_] FOREIGN KEY ([my_cart_id]) REFERENCES [my_cart]([my_cart_id])
go

