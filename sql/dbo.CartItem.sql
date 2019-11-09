CREATE TABLE [dbo].[CartItem] (
    [CartID]    INT        NOT NULL,
    [Amount]    NCHAR (10) NULL,
    [ProductID] NCHAR (10) NULL,
    PRIMARY KEY CLUSTERED ([CartID] ASC)
);

