Create Database Todo;
GO

USE Todo;
GO

BEGIN TRANSACTION;
GO

CREATE TABLE [TodoItems] (
    [Id] bigint NOT NULL IDENTITY,
    [Name] nvarchar(max) NULL,
    [IsComplete] bit NOT NULL,
    [Secret] nvarchar(max) NULL,
    CONSTRAINT [PK_TodoItems] PRIMARY KEY ([Id])
    );
GO

COMMIT;
GO
