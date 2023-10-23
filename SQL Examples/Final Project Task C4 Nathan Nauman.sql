/* IQ1 */
SELECT Customer_ID 
From Invoice
Where Remaining_balance > 500;

/* IQ2 */
SELECT DISTINCT First_Name, Last_Name, Invoice_ID, Remaining_Balance
FROM Customer
INNER JOIN invoice	
	On Customer.Customer_ID = Invoice.Customer_ID
Where Remaining_balance > 300;

/* IQ3 */
SELECT DISTINCT Customer_ID, I.Invoice_ID, Invoice_Date, Total_Price, Remaining_Balance, Payment_Record_ID, Payment_Amount, Payment_Method
FROM Invoice i, employee_invoice e, Payment_Record p
    	WHERE i.Invoice_ID = p.Invoice_ID
        AND i.Invoice_ID = e.Invoice_ID
        AND Customer_ID = 3;

/* IQ4 */
SELECT DISTINCT i.Invoice ID, Customer_ID, Email, Quantity
FROM invoice_item ii, customer c, invoice i
WHERE i.customer_ID = c.customer_ID
AND Item_ID = 12;


/* IQ5 */
SELECT DISTINCT Invoice_ID
From employee_invoice 
WHERE Invoice_date BETWEEN '2015-01-06' AND '2015-02-07';
 
 /* IQ6 */
 SELECT SUM(Total_Price) TOTAL
 FROM invoice
 WHERE invoice_ID = 101 or 102 or 103 or 104 or 106 or 107 or 109; 
 
 /* IQ7 */
 SELECT s.Supplier_ID, Sup_Name, Address, Postal_Code, Phone_Number, Email, Cost_Price
 FROM supplier_item i, supplier s
 WHERE i.Supplier_ID = s.Supplier_ID
 AND Item_ID = 10;
 
  /* IQ8 */
  
  
  
  
   /* IQ9 */
   SELECT MIN(Total_Price) as MinPrice, Max(Total_Price) as MaxPrice, AVG(Total_Price) as AvgPrice
   FROM Invoice;
   
    
    /* IQ10 */
    SELECT e.Item_ID, Supplier_ID
    FROM Employee_updates_inventory e, supplier_item s
    WHERE e.item_ID = s.item_ID
    AND Available_quantity < 20;
    
    /* IQ EC */
    SELECT Item_ID, Sum(ordered_quantity) as HighestDemand
    From invoice_Item
    group by Item_ID;
    
