DECLARE @ReactionID INT, @ReactionUserID INT, @ReactionPostID INT, @ReactionType VARCHAR(255), @ReactionDate BIGINT;


SET @ReactionID = 1;
SET @ReactionUserID = 1;
SET @ReactionPostID = 1;
SET @ReactionType = 'Like';
SET @ReactionDate = 1588172188;


INSERT INTO reactions (ID, UserID, PostID, ReactionType, ReactionDate)
VALUES (@ReactionID, @ReactionUserID, @ReactionPostID, @ReactionType, @ReactionDate);
