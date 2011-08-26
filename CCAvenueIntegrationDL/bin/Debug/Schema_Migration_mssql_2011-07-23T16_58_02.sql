-- System.Collections.Generic.IList`1[[CCAvenueIntegrationDL.Product, CCAvenueIntegrationDL, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]] CCAvenueIntegrationDL.PreTransactionDetails.<Products>k__BackingField
CREATE TABLE [pr_transaction_details_product] (
    [pre_transaction_details_id] INT NOT NULL,
    [seq] INT NOT NULL,                     -- <sequence>
    [product_id] INT NULL,
    CONSTRAINT [pk_pr_trnscton_details_product] PRIMARY KEY ([pre_transaction_details_id], [seq])
)
go

ALTER TABLE [pr_transaction_details_product] ADD CONSTRAINT [ref_pr_trnsctn_dtls_prdct_pr_t] FOREIGN KEY ([pre_transaction_details_id]) REFERENCES [pre_transaction_details]([pre_transaction_details_id])
go

ALTER TABLE [pr_transaction_details_product] ADD CONSTRAINT [ref_pr_trnsctn_dtls_prdct_prdc] FOREIGN KEY ([product_id]) REFERENCES [product]([product_id])
go

