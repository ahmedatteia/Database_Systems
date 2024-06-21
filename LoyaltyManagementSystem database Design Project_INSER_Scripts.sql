Inserts scripts:
-- Insert 10 records into the LoyaltyProgram table
INSERT INTO LoyaltyProgram (ProgramID, ProgramName, Description, ExpiryDate)
VALUES 
    (1, 'Gold Program', 'Exclusive benefits for loyal customers', '2024-12-31'),
    (2, 'Silver Program', 'Special rewards for frequent shoppers', '2024-12-31'),
    (3, 'Bronze Program', 'Entry-level rewards program', '2024-12-31'),
    (4, 'Platinum Program', 'Premium rewards for high-spending customers', '2024-12-31'),
    (5, 'VIP Program', 'Exclusive perks for VIP members', '2024-12-31'),
    (6, 'Elite Program', 'Luxury rewards for elite customers', '2024-12-31'),
    (7, 'Basic Program', 'Basic rewards for all customers', '2024-12-31'),
    (8, 'Premium Program', 'Enhanced rewards for premium members', '2024-12-31'),
    (9, 'Exclusive Program', 'Exclusive benefits for select customers', '2024-12-31'),
    (10, 'Standard Program', 'Standard rewards for regular customers', '2024-12-31');

-- Insert 10 records into the Reward table
INSERT INTO Reward (RewardID, ProgramID, RewardName, PointsRequired, Description, Category)
VALUES 
    (1, 1, 'Discount Voucher', 1000, 'Get a 10% discount on your next purchase', 'Discount'),
    (2, 1, 'Free Gift', 2000, 'Receive a free gift with your purchase', 'Gift'),
    (3, 2, 'Cashback Reward', 1500, 'Earn 5% cashback on all purchases', 'Cashback'),
    (4, 2, 'Upgrade Coupon', 2500, 'Upgrade to the next membership level for free', 'Upgrade'),
    (5, 3, 'Bonus Points', 500, 'Receive bonus points for each transaction', 'Points'),
    (6, 3, 'Early Access Pass', 3000, 'Get early access to new product releases', 'Access'),
    (7, 4, 'Exclusive Event Invitation', 5000, 'Receive an invitation to exclusive events', 'Event'),
    (8, 4, 'Luxury Gift', 4000, 'Get a luxury gift as a reward', 'Gift'),
    (9, 5, 'Personal Shopper Service', 6000, 'Enjoy a personalized shopping experience', 'Service'),
    (10, 5, 'Priority Customer Support', 2000, 'Receive priority support from customer service', 'Support');

-- Insert 10 records into the SpecialOffer table
INSERT INTO SpecialOffer (OfferID, OfferName, Description, Discount, Category, RewardID)
VALUES 
    (1, 'Summer Sale', 'Enjoy big savings during the summer season', 0.15, 'Sale', 1),
    (2, 'Holiday Promotion', 'Special discounts for the holiday season', 0.20, 'Promotion', 2),
    (3, 'Weekend Flash Sale', 'Limited-time offers for the weekend', 0.25, 'Sale', 3),
    (4, 'Black Friday Deals', 'Exclusive discounts on Black Friday', 0.30, 'Sale', 4),
    (5, 'Clearance Sale', 'Clearance discounts on selected items', 0.40, 'Sale', 5),
    (6, 'Birthday Bonus', 'Special rewards on your birthday', 0.10, 'Bonus', 6),
    (7, 'Anniversary Celebration', 'Celebrate our anniversary with exclusive offers', 0.20, 'Celebration', 7),
    (8, 'New Year Special', 'Welcome the new year with special discounts', 0.15, 'Special', 8),
    (9, 'Spring Clearance', 'Clearance discounts for the spring season', 0.30, 'Sale', 9),
    (10, 'Holiday Giveaway', 'Enter for a chance to win exciting prizes', 0.00, 'Giveaway', 10);

-- Insert 10 records into the Customer table
INSERT INTO Customer (CustomerID, Name, Address, Phone, Email)
VALUES 
    (1, 'John Doe', '123 Main St', '555-1234', 'john.doe@example.com'),
    (2, 'Jane Smith', '456 Elm St', '555-5678', 'jane.smith@example.com'),
    (3, 'Michael Johnson', '789 Oak St', '555-9012', 'michael.johnson@example.com'),
    (4, 'Sarah Williams', '321 Pine St', '555-3456', 'sarah.williams@example.com'),
    (5, 'David Brown', '654 Maple St', '555-7890', 'david.brown@example.com'),
    (6, 'Jennifer Davis', '987 Birch St', '555-2345', 'jennifer.davis@example.com'),
    (7, 'Christopher Miller', '159 Cedar St', '555-6789', 'christopher.miller@example.com'),
    (8, 'Emily Wilson', '852 Walnut St', '555-0123', 'emily.wilson@example.com'),
    (9, 'Daniel Taylor', '753 Spruce St', '555-4567', 'daniel.taylor@example.com'),
    (10, 'Olivia Anderson', '426 Fir St', '555-8901', 'olivia.anderson@example.com');

-- Insert 10 records into the Account table
INSERT INTO Account (AccountID, CustomerID, AccountType, Balance)
VALUES 
    (1, 1, 'Savings', 5000.00),
    (2, 2, 'Checking', 10000.00),
    (3, 3, 'Savings', 2500.00),
    (4, 4, 'Checking', 7500.00),
    (5, 5, 'Savings', 3000.00),
    (6, 6, 'Checking', 15000.00),
    (7, 7, 'Savings', 20000.00),
    (8, 8, 'Checking', 8000.00),
    (9, 9, 'Savings', 6000.00),
    (10, 10, 'Checking', 12000.00);

-- Insert 10 records into the Card table
INSERT INTO Card (CardID, CustomerID, CardNumber, ExpirationDate, CVV, CardType, ProgramID)
VALUES 
    (1, 1, '1234567890123456', '2025-12-31', '123', 'Visa', 1),
    (2, 2, '2345678901234567', '2025-12-31', '234', 'Mastercard', 2),
    (3, 3, '3456789012345678', '2025-12-31', '345', 'Visa', 3),
    (4, 4, '4567890123456789', '2025-12-31', '456', 'American Express', 4),
    (5, 5, '5678901234567890', '2025-12-31', '567', 'Discover', 5),
    (6, 6, '6789012345678901', '2025-12-31', '678', 'Visa', 6),
    (7, 7, '7890123456789012', '2025-12-31', '789', 'Mastercard', 7),
    (8, 8, '8901234567890123', '2025-12-31', '890', 'Visa', 8),
    (9, 9, '9012345678901234', '2025-12-31', '901', 'American Express', 9),
    (10, 10, '0123456789012345', '2025-12-31', '012', 'Discover', 10);

-- Insert 10 records into the CardTransaction table
INSERT INTO CardTransaction (TransactionID, CardID, Amount, Date, Time)
VALUES 
    (1, 1, 100.00, '2023-06-19', '15:30:00'),
    (2, 2, 75.50, '2023-06-19', '16:45:00'),
    (3, 3, 200.00, '2023-06-19', '12:15:00'),
    (4, 4, 50.75, '2023-06-19', '10:30:00'),
    (5, 5, 300.00, '2023-06-19', '11:45:00'),
    (6, 6, 120.50, '2023-06-19', '09:00:00'),
    (7, 7, 80.25, '2023-06-19', '14:00:00'),
    (8, 8, 150.00, '2023-06-19', '17:30:00'),
    (9, 9, 45.75, '2023-06-19', '13:15:00'),
    (10, 10, 250.00, '2023-06-19', '18:00:00');

-- Insert 10 records into the CustomerLoyaltyProgram table
INSERT INTO CustomerLoyaltyProgram (CustomerID, ProgramID, JoinDate, PointsEarned)
VALUES 
    (1, 1, '2023-06-19', 500),
    (2, 2, '2023-06-19', 750),
    (3, 3, '2023-06-19', 300),
    (4, 4, '2023-06-19', 200),
    (5, 5, '2023-06-19', 400),
    (6, 6, '2023-06-19', 100),
    (7, 7, '2023-06-19', 600),
    (8, 8, '2023-06-19', 800),
    (9, 9, '2023-06-19', 250),
    (10, 10, '2023-06-19', 450);

-- Insert 10 records into the RewardOffers table
INSERT INTO RewardOffers (RewardID, OfferID)
VALUES 
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);
