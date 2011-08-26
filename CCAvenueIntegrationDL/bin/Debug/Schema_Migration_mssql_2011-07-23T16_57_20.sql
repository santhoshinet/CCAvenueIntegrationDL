-- CCAvenueIntegrationDL.Product
CREATE TABLE [product] (
    [product_id] INT NOT NULL,              -- <internal-pk>
    [<_name>k___backing_field] VARCHAR(255) NULL, -- <Name>k__BackingField
    [<_price>k___backing_field] FLOAT NOT NULL, -- <Price>k__BackingField
    [<_quanity>k___backing_field] INT NOT NULL, -- <Quanity>k__BackingField
    [voa_version] SMALLINT NOT NULL,        -- <internal-version>
    CONSTRAINT [pk_product] PRIMARY KEY ([product_id])
)
go

