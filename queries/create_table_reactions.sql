CREATE TABLE reactions (
    ID INT PRIMARY KEY,
    UserID INT,
    PostID INT,
    ReactionType VARCHAR(255),
    ReactionDate BIGINT,
    FOREIGN KEY (UserID) REFERENCES users(ID),
    FOREIGN KEY (PostID) REFERENCES posts(ID)
);
