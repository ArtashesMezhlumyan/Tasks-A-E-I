CREATE TABLE friends (
    User1ID INT,
    User2ID INT,
    FOREIGN KEY (User1ID) REFERENCES users(ID),
    FOREIGN KEY (User2ID) REFERENCES users(ID)
);