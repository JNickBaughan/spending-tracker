CREATE TABLE AccountType {
    AccountTypeID INT IDENTITY(1,1) PRIMARY KEY,
    AccountTypeName VARCHAR(150)
}

CREATE TABLE Account {
    AccountID INT IDENTITY(1,1) PRIMARY KEY,
    AccountName VARCHAR(150),
    AccountType INT FOREIGN KEY REFERENCES AccountType(AccountTypeID)
    AccountNumber VARCHAR(150),
    AccountDescription VArchar(250)
}

CREATE TABLE TransactionType {
    TransactionTypeID INT IDENTITY(1,1) PRIMARY KEY,
    TransactionName VARCHAR(150)
}

CREATE TABLE Transaction {
    TransactionID INT IDENTITY(1,1) PRIMARY KEY,
    TransactionDate DATETIME NOT NULL,
    Account INT FOREIGN KEY REFERENCES Account(AccountID)
    TransactionType INT FOREIGN KEY REFERENCES TransactionType(TransactionID)
    Vendor VARCHAR(150),
    TransactionDescription VARCHAR(150),
    Comment VARCHAR(255)
    -- TODO add category
}