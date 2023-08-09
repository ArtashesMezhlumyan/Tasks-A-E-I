CREATE TABLE posts (
    ID INT PRIMARY KEY,
    UserID INT,
    PostType VARCHAR(255),
    PostDate BIGINT,
    FOREIGN KEY (UserID) REFERENCES users(ID)
);
