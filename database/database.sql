CREATE DATABASE transactions;

CREATE TABLE AccountType (
    AccountTypeID INT IDENTITY(1,1) PRIMARY KEY,
    AccountTypeName VARCHAR(150)
)

INSERT INTO AccountType (AccountTypeName)
VALUES ('cash'), ('credit card'), ('checking'), ('saving');

CREATE TABLE Account (
    AccountID INT IDENTITY(1,1) PRIMARY KEY,
    AccountName VARCHAR(150),
    AccountType INT FOREIGN KEY REFERENCES AccountType(AccountTypeID),
    AccountNumber VARCHAR(150),
    AccountDescription VArchar(250)
)

INSERT INTO Account (AccountName, AccountType, AccountNumber, AccountDescription)
VALUES 
('Chase Sapphire', 2, '************ ****', 'Joint Chase Card'),
('Chase Freedom', 2, '************ ****', 'Joint Chase Card'),
('Discover', 2, '************ ****', 'Joint Discover Card');

CREATE TABLE TransactionType (
    TransactionTypeID INT IDENTITY(1,1) PRIMARY KEY,
    TransactionName VARCHAR(150)
)

INSERT INTO TransactionType (TransactionName)
VALUES ('debit'), ('credit');

CREATE TABLE TransactionTable (
    TransactionID INT IDENTITY(1,1) PRIMARY KEY,
    TransactionDate DATETIME NOT NULL,
    Account INT FOREIGN KEY REFERENCES Account(AccountID),
    TransactionType INT FOREIGN KEY REFERENCES TransactionType(TransactionTypeID),
    Vendor VARCHAR(150),
    TransactionDescription VARCHAR(150),
    Comment VARCHAR(255)
    -- TODO add category
)