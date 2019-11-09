CREATE TABLE [dbo].[Postage] (
    [PostageID]   INT        NOT NULL,
    [UserID]      NCHAR (10) NULL,
    [ContactName] NCHAR (10) NULL,
    [Street]      NCHAR (10) NULL,
    [City]        NCHAR (10) NULL,
    [State]       NCHAR (10) NULL,
    [Country]     NCHAR (10) NULL,
    [ZipCode]     NCHAR (10) NULL,
    [Phone]       NCHAR (10) NULL,
    PRIMARY KEY CLUSTERED ([PostageID] ASC)
);

