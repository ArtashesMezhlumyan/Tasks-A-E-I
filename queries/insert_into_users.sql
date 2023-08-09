DECLARE @ID INT, @Surname VARCHAR(255), @Name VARCHAR(255), @Age INT, @SubscriptionDate BIGINT;
SET @ID = 1;
SET @Surname = 'Smith';
SET @Name = 'Sarah';
SET @Age = 30;
SET @SubscriptionDate = 1588157373;
INSERT INTO users (ID, Surname, Name, Age, SubscriptionDate)
VALUES (@ID, @Surname, @Name, @Age, @SubscriptionDate);