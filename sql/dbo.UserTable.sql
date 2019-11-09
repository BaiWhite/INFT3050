CREATE TABLE [dbo].[UserTable] (
    [UserID]   INT           IDENTITY (1, 1) NOT NULL,
    [UserName] NCHAR (10)    NULL,
    [Email]    NCHAR (20)    NULL,
    [Password] NCHAR (10)    NULL,
    [roles]    NVARCHAR (64) NULL,
    PRIMARY KEY CLUSTERED ([UserID] ASC)
);

INSERT INTO [dbo].[UserTable] VALUES ( 'admin', 'admin@gmail.com', 'admin123', 'Admin');