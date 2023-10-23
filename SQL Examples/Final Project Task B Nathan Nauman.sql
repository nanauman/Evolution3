CREATE ROLE IF NOT EXISTS Sales@invoice_system, Manager@invoice_system;
GRANT ALL ON invoice_system to Manager@invoice_system;
GRANT SELECT, INSERT, DELETE  ON invoice_system.invoice TO Sales@invoice_system;
GRANT SELECT, INSERT, DELETE ON invoice_system.invoice_item TO Sales@invoice_system;
GRANT SELECT(Customer_ID, First_Name, Last_Name)
	ON invoice_system.Customer
    TO  Sales@invoice_system;
GRANT SELECT (Item_ID, Item_Description, Sale_Price)
	ON invoice_system.Inventory 
    TO Sales@invoice_system;
GRANT SELECT (Available_Quantity)
	ON invoice_system.employee_Updates_Inventory
    TO Sales@invoice_system;
GRANT INSERT ON invoice_system.payment_record to Sales@invoice_system;


CREATE USER Adesch@IS.com 
		IDENTIFIED BY 'password1234'
        DEFAULT ROLE Manager@invoice_system;
CREATE USER Amcrl@IS.com
		IDENTIFIED BY 'password1234'
        DEFAULT ROLE Sales@invoice_system;
CREATE USER Dbrem@IS.com
		IDENTIFIED BY 'password1234'
        DEFAULT ROLE Sales@invoice_system;
CREATE USER Gbrech@IS.com
		IDENTIFIED BY 'password1234'
        DEFAULT ROLE Sales@invoice_system;
CREATE USER Lrow@IS.com
		IDENTIFIED BY 'password1234'
        DEFAULT ROLE Sales@invoice_system;



