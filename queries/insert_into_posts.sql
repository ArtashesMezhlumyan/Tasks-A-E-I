DECLARE @PostID INT, @UserID INT, @PostType VARCHAR(255), @PostDate BIGINT;

SET @PostID = 1;
SET @UserID = 1;
SET @PostType = 'Image';
SET @PostDate = 1588166977;


INSERT INTO posts (ID, UserID, PostType, PostDate)
VALUES (@PostID, @UserID, @PostType, @PostDate);
