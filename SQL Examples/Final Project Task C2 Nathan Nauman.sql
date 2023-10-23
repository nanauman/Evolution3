SET FOREIGN_KEY_CHECKS = 0;
SET SQL_SAFE_UPDATES = 0;
/* UQ1 */
INSERT INTO Customer
VALUES (12, 'John', 'Smith', '310-805-9801', '123 Drury Lane', 79111, 'JSmith@cxr.com');  

/* UQ2 */
INSERT INTO Invoice
VALUES(120, 12, 2385.08, 0.00, 2385.08);

INSERT INTO Invoice_Item
VALUES(120, 7, 2, 603.50),
	  (120, 15, 2, 483.05),
      (120, 2, 3, 70.66);

/* UQ3 */
INSERT INTO Payment_Record
VALUES(101, 120, 2000.00, '2021-11-10', 'Credit Card', 'Visa', '1234-5678-9012-3456', Null, Null);

UPDATE Invoice
SET Remaining_Balance = 385.08
Where Invoice_ID = 120; 

UPDATE Invoice
SET Amount_Paid = 2000.00
Where Invoice_ID = 120; 

/* UQ4  */
Update Employee_Updates_Inventory
SET Available_Quantity = Available_Quantity - 3
Where Item_ID = 2;

SET FOREIGN_KEY_CHECKS = 1;


