CREATE DATABASE IF NOT EXISTS Invoice_System;
Use Invoice_System;
SET FOREIGN_KEY_CHECKS = 0;
CREATE TABLE IF NOT EXISTS Customer(
Customer_ID  VARCHAR(50)   NOT NULL,
First_Name   VARCHAR(50)    DEFAULT NULL,
Last_Name    VARCHAR(50)    DEFAULT NULL,
Phone_Number VARCHAR(20)     DEFAULT NULL,
Address      VARCHAR(200)   DEFAULT NULL,
Postal_Code  VARCHAR(10)    DEFAULT NULL,
Email        VARCHAR(200)    DEFAULT NULL, 
PRIMARY KEY (Customer_ID)
);
CREATE TABLE IF NOT EXISTS Payment_Record(
Payment_Record_ID           VARCHAR(50)       NOT NULL,
Invoice_ID                  VARCHAR(50)       NOT NULL,
Payment_Amount			    DECIMAL(13,2)     NOT NULL,
Payment_Date	            DATE              NOT NULL,
Payment_Method              VARCHAR(50)       NOT NULL,
Card_Type					VARCHAR(50)		  DEFAULT NULL,
Card_Number					VARCHAR(50)		  DEFAULT NULL,
Check_Bank					VARCHAR(50)		  DEFAULT NULL,
Check_Number				VARCHAR(50)		  DEFAULT NULL,
PRIMARY KEY (Payment_Record_ID),

CONSTRAINT fk_PR_InvoiceID     FOREIGN KEY(Invoice_ID)
REFERENCES Invoice (Invoice_ID)
);
CREATE TABLE IF NOT EXISTS Invoice(
Invoice_ID			VARCHAR(50)		NOT NULL,
Customer_ID			VARCHAR(50)		NOT NULL,
Total_Price     	DECIMAL(13,2)   NOT NULL,
Amount_Paid     	DECIMAL(13,2)   DEFAULT NULL,
Remaining_Balance   DECIMAL(13,2)   NOT NULL,
PRIMARY KEY (Invoice_ID),

CONSTRAINT fk_I_Customer_ID    FOREIGN KEY(Customer_ID)
REFERENCES Customer (Customer_ID)
);
CREATE TABLE IF NOT EXISTS Employee(
Employee_ID			VARCHAR(50)			NOT NULL,
First_Name   		VARCHAR(50)    		DEFAULT NULL,
Last_Name    		VARCHAR(50)    		DEFAULT NULL,
Phone_Number 		VARCHAR(20)     	DEFAULT NULL,
Email				VARCHAR(200)		DEFAULT NULL,
Position			VARCHAR(50)         DEFAULT NULL,
PRIMARY KEY (Employee_ID)
);
CREATE TABLE IF NOT EXISTS Supplier(
Supplier_ID			VARCHAR(50)			NOT NULL,
Sup_Name   			VARCHAR(200)   		DEFAULT NULL,
Address				VARCHAR(200)		DEFAULT NULL,
Postal_Code			VARCHAR(10)			DEFAULT NULL,
Phone_Number 		VARCHAR(20)     	DEFAULT NULL,
Email				VARCHAR(200)		DEFAULT NULL,
PRIMARY KEY (Supplier_ID)
);
CREATE TABLE IF NOT EXISTS Inventory(
Item_ID					VARCHAR(50)			NOT NULL,
Item_Description		VARCHAR(200)		NOT NULL,
Sale_Price				DECIMAL(13,2)		NOT NULL,
PRIMARY KEY (Item_ID)
);
CREATE TABLE IF NOT EXISTS Employee_Invoice(
Invoice_ID         VARCHAR(50)          NOT NULL,
Employee_ID		   VARCHAR(50)    		NOT NULL,
Invoice_Date		DATE				DEFAULT NULL,
Invoice_Time        TIME				DEFAULT NULL,
PRIMARY KEY (Invoice_ID, Employee_ID),

CONSTRAINT fk_INVID      FOREIGN KEY (Invoice_ID)
REFERENCES Invoice (Invoice_ID),
CONSTRAINT FK_EMPID     FOREIGN KEY (Employee_ID) 
REFERENCES Employee (Employee_ID)
);
CREATE TABLE IF NOT EXISTS Employee_Updates_Inventory(
Employee_ID		   		VARCHAR(50)    		NOT NULL,
Item_ID            		VARCHAR(50)         NOT NULL,
Available_Quantity		INT					DEFAULT NULL,
PRIMARY KEY (Employee_ID, Item_ID),

CONSTRAINT FK_EMID     FOREIGN KEY (Employee_ID) 
REFERENCES Employee (Employee_ID),
CONSTRAINT fk_ITMID      FOREIGN KEY (Item_ID)
REFERENCES Inventory (Item_ID)
);
CREATE TABLE IF NOT EXISTS Supplier_Item(
Supplier_ID         VARCHAR(50)         NOT NULL,
Item_ID	            VARCHAR(50)    		NOT NULL,
Cost_Price			DECIMAL(13,2)		NOT NULL,
PRIMARY KEY (Supplier_ID, Item_ID),

CONSTRAINT fk_SUPID      FOREIGN KEY (Supplier_ID)
REFERENCES Supplier (Supplier_ID),
CONSTRAINT FK_ITID     FOREIGN KEY (Item_ID) 
REFERENCES Inventory (Item_ID)
);
CREATE TABLE IF NOT EXISTS Invoice_Item(
Invoice_ID			VARCHAR(50)			NOT NULL,
Item_ID				VARCHAR(50)			NOT NULL,
Ordered_Quantity	INT					DEFAULT NULL,
Unit_Price			DECIMAL(13,2)		DEFAULT NULL,
PRIMARY KEY (Invoice_ID, Item_ID),

CONSTRAINT fk_IVID		FOREIGN KEY (Invoice_ID)
REFERENCES Invoice (Invoice_ID),
CONSTRAINT fk_IMID      FOREIGN KEY (Item_ID)
REFERENCES Inventory  (Item_ID)
);
SET FOREIGN_KEY_CHECKS = 1;

/* ASSUMED ALL USERS WOULD KNOW DECIMAL VALUES ARE MONEY VALUES AS COLUMN NAMES ARE  CLEAR 
ALSO ASSUMED POSITIONS FOR EMPLOYEES AND PAYMENT RECORD ID NUMBERS*/
