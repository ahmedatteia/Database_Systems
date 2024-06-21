# __Database_Systems__
This repository introduces fundamental concepts necessary for designing, using, and implementing database systems and database applications.


### __Loyalty Management System Database Design__
Overview
This project involves designing a comprehensive database system for a Loyalty Management System.
The database is structured to manage loyalty programs, rewards, special offers, customer information, and transactions effectively, project includes SQL scripts for creating  database, schemas, inserting sample data, and performing various queries.

__Features__
__Database Schema Creation__: SQL scripts to create tables and define relationships between them.
__Sample Data Insertion__: 
  -  Scripts to insert sample data into the database for testing and demonstration purposes.
  -  Queries: Examples of queries to retrieve and manipulate data across multiple tables.

__Entity-Relationship Diagram (ERD)__: A visual representation of the database schema and relationships.

#### __Project Structure__
__Database Creation Scripts:__ Scripts to create the database and tables, including primary and foreign key constraints.
__Sample Data Scripts:__ Scripts to insert sample data into the tables for initial setup.
__Query Scripts:__ Examples of various queries to interact with the data.
__EERD Design:__ Enhanced Entity-Relationship Diagram illustrating the database structure and relationships.

#### __Getting Started__

__1- Create the Database:__

Use the provided SQL script in the database_creation directory to create the database and tables.


__2- Insert Sample Data:__

Run the scripts in the sample_data directory to populate the database with sample data.


__3- Run Queries:__

Use the scripts in the queries directory to execute various queries and see the results.


##### __Database Schema__

__LoyaltyProgram Table:__ Manages loyalty programs with fields such as ProgramID, ProgramName, Description, and ExpiryDate.

__Reward Table:__ Contains reward details linked to loyalty programs with fields like RewardID, ProgramID, RewardName, PointsRequired, Description, and Category.

__SpecialOffer Table:__ Stores special offers related to rewards with fields such as OfferID, OfferName, Description, Discount, Category, and RewardID.

__Customer Table:__ Holds customer information including CustomerID, Name, Address, Phone, and Email.

__Account Table:__ Manages customer accounts with fields AccountID, CustomerID, AccountType, and Balance.

__Card Table:__ Stores card information linked to customers and loyalty programs with fields like CardID, CustomerID, CardNumber, ExpirationDate, CVV, CardType, and ProgramID.

__CardTransaction Table:__ Records transactions made using cards with fields such as TransactionID, CardID, Amount, Date, and Time.

__CustomerLoyaltyProgram Table:__ Links customers to loyalty programs with fields CustomerID, ProgramID, JoinDate, and PointsEarned.

__RewardOffers Table:__ Links rewards to special offers with fields RewardID and OfferID.

###### __Contribution__

__Contributions are welcome! Please fork the repository and submit pull requests for any improvements or new features.__


