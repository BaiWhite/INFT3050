CREATE TABLE [dbo].[Cart] (
    [CartID]   INT        IDENTITY (1, 1) NOT NULL,
    [UserName] NCHAR (10) NULL,
    [Status]   NCHAR (10) NULL,
    PRIMARY KEY CLUSTERED ([CartID] ASC)
);

