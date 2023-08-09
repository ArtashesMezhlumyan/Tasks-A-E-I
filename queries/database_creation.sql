IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'social_network_DB')
BEGIN
    CREATE DATABASE social_network_DB;
END


CREATE TABLE users (
    ID INT PRIMARY KEY,
    Surname VARCHAR(255),
    Name VARCHAR(255),
    Age INT,
    SubscriptionDate BIGINT
);

CREATE TABLE friends (
    User1ID INT,
    User2ID INT,
    FOREIGN KEY (User1ID) REFERENCES users(ID),
    FOREIGN KEY (User2ID) REFERENCES users(ID)
);

CREATE TABLE posts (
    ID INT PRIMARY KEY,
    UserID INT,
    PostType VARCHAR(255),
    PostDate BIGINT,
    FOREIGN KEY (UserID) REFERENCES users(ID)
);

CREATE TABLE reactions (
    ID INT PRIMARY KEY,
    UserID INT,
    PostID INT,
    ReactionType VARCHAR(255),
    ReactionDate BIGINT,
    FOREIGN KEY (UserID) REFERENCES users(ID),
    FOREIGN KEY (PostID) REFERENCES posts(ID)
);

DECLARE @ID INT, @Surname VARCHAR(255), @Name VARCHAR(255), @Age INT, @SubscriptionDate BIGINT;
SET @ID = 1;
SET @Surname = 'Smith';
SET @Name = 'Sarah';
SET @Age = 30;
SET @SubscriptionDate = 1588157373;
INSERT INTO users (ID, Surname, Name, Age, SubscriptionDate)
VALUES (@ID, @Surname, @Name, @Age, @SubscriptionDate);



DECLARE @User1ID INT, @User2ID INT;

SET @User1ID = 1;
SET @User2ID = 2;

INSERT INTO friends (User1ID, User2ID)
VALUES (@User1ID, @User2ID);


DECLARE @PostID INT, @UserID INT, @PostType VARCHAR(255), @PostDate BIGINT;

SET @PostID = 1;
SET @UserID = 1;
SET @PostType = 'Image';
SET @PostDate = 1588166977;


INSERT INTO posts (ID, UserID, PostType, PostDate)
VALUES (@PostID, @UserID, @PostType, @PostDate);


