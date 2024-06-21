-- Create LoyaltyManagementSystem database
CREATE DATABASE LoyaltyManagementSystem;
GO

-- Use LoyaltyManagementSystem database
USE LoyaltyManagementSystem;
GO

-- Create LoyaltyProgram table
CREATE TABLE LoyaltyProgram (
    ProgramID INT PRIMARY KEY,
    ProgramName VARCHAR(100),
    Description VARCHAR(255),
    ExpiryDate DATE
);
GO

-- Create Reward table
CREATE TABLE Reward (
    RewardID INT PRIMARY KEY,
    ProgramID INT,
    RewardName VARCHAR(100),
    PointsRequired INT,
    Description VARCHAR(255),
    Category VARCHAR(50),
    FOREIGN KEY (ProgramID) REFERENCES LoyaltyProgram(ProgramID)
);
GO

-- Create SpecialOffer table
CREATE TABLE SpecialOffer (
    OfferID INT PRIMARY KEY,
    OfferName VARCHAR(100),
    Description VARCHAR(255),
    Discount DECIMAL(5, 2),
    Category VARCHAR(50),
    RewardID INT,
    FOREIGN KEY (RewardID) REFERENCES Reward(RewardID)
);
GO

-- Create Customer table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(100),
    Phone VARCHAR(20),
    Email VARCHAR(100)
);
GO

-- Create Account table
CREATE TABLE Account (
    AccountID INT PRIMARY KEY,
    CustomerID INT,
    AccountType VARCHAR(50),
    Balance DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);
GO

-- Create Card table
CREATE TABLE Card (
    CardID INT PRIMARY KEY,
    CustomerID INT,
    CardNumber VARCHAR(16),
    ExpirationDate DATE,
    CVV VARCHAR(3),
    CardType VARCHAR(50),
    ProgramID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (ProgramID) REFERENCES LoyaltyProgram(ProgramID)
);
GO

-- Create CardTransaction table
CREATE TABLE CardTransaction (
    TransactionID INT PRIMARY KEY,
    CardID INT,
    Amount DECIMAL(10, 2),
    Date DATE,
    Time TIME,
    FOREIGN KEY (CardID) REFERENCES Card(CardID)
);
GO

-- Create CustomerLoyaltyProgram table
CREATE TABLE CustomerLoyaltyProgram (
    CustomerID INT,
    ProgramID INT,
    JoinDate DATE,
    PointsEarned INT,
    PRIMARY KEY (CustomerID, ProgramID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (ProgramID) REFERENCES LoyaltyProgram(ProgramID)
);
GO

-- Create RewardOffers table
CREATE TABLE RewardOffers (
    RewardID INT,
    OfferID INT,
    FOREIGN KEY (RewardID) REFERENCES Reward(RewardID),
    FOREIGN KEY (OfferID) REFERENCES SpecialOffer(OfferID),
    PRIMARY KEY (RewardID, OfferID)
);
GO
