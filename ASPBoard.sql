CREATE TABLE [dbo].[User] (
    [UID]      INT          IDENTITY (1, 1) NOT NULL,
    [UserId]   VARCHAR (15) NOT NULL,
    [Password] VARCHAR (10) NOT NULL,
    PRIMARY KEY CLUSTERED ([UID] ASC)
);

CREATE TABLE [dbo].[GBoard] (
    [Num]       INT            IDENTITY (1, 1) NOT NULL,
    [name]      NVARCHAR (10)  NOT NULL,
    [pass]      NVARCHAR (20)  NOT NULL,
    [email]     NVARCHAR (30)  NOT NULL,
    [title]     NVARCHAR (50)  NOT NULL,
    [contents]  NVARCHAR (500) NOT NULL,
    [writedate] DATE           NOT NULL,
    [readcount] INT            DEFAULT ((0)) NOT NULL,
    [refer]     INT            DEFAULT ((0)) NOT NULL,
    [depth]     INT            DEFAULT ((0)) NOT NULL,
    [pos]       INT            DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([Num] ASC)
);

CREATE TABLE [dbo].[AComment] (
    [num]       INT           IDENTITY (1, 1) NOT NULL,
    [id]        INT           NOT NULL,
    [name]      NVARCHAR (10) NOT NULL,
    [contents]  NTEXT         NOT NULL,
    [writedate] NVARCHAR (20) NOT NULL,
    PRIMARY KEY CLUSTERED ([num] ASC)
);

CREATE TABLE [dbo].[AAlbum] (
    [no]        INT           IDENTITY (1, 1) NOT NULL,
    [name]      NVARCHAR (10) NOT NULL,
    [title]     NVARCHAR (50) NOT NULL,
    [contents]  NTEXT         NOT NULL,
    [writedate] NVARCHAR (20) NOT NULL,
    [readcount] INT           NOT NULL,
    [fileurl]   NVARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([no] ASC)
);


