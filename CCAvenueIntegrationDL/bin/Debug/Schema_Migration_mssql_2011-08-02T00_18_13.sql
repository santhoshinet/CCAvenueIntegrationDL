-- CCAvenueIntegrationDL.Category
CREATE TABLE [category] (
    [category_id] INT NOT NULL,             -- <internal-pk>
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

ALTER TABLE [category_product] ADD CONSTRAINT [ref_category_product_category] FOREIGN KEY ([category_id]) REFERENCES [category]([category_id])
go

ALTER TABLE [category_product] ADD CONSTRAINT [ref_category_product_product] FOREIGN KEY ([product_id]) REFERENCES [product]([product_id])
go

