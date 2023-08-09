DECLARE @User1ID INT, @User2ID INT;

SET @User1ID = 1;
SET @User2ID = 2;

INSERT INTO friends (User1ID, User2ID)
VALUES (@User1ID, @User2ID);
