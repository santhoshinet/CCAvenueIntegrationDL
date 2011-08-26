-- CCAvenueIntegrationDL.LatestNews
CREATE TABLE [latest_news] (
    [latest_news_id] INT NOT NULL,          -- <internal-pk>
    [<_news>k___backing_field] VARCHAR(255) NULL, -- <News>k__BackingField
    [voa_version] SMALLINT NOT NULL,        -- <internal-version>
    CONSTRAINT [pk_latest_news] PRIMARY KEY ([latest_news_id])
)
go

