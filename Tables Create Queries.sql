-- Construction Sites Table
CREATE TABLE ConstructionSites ( SiteID INT PRIMARY KEY, Address VARCHAR(255), ProjectStatus VARCHAR(50) );
-- Projects Table
CREATE TABLE Projects ( ProjectID INT PRIMARY KEY, Budget DECIMAL(10,2), Deadline DATE, SiteID INT, FOREIGN KEY (SiteID) REFERENCES ConstructionSites(SiteID) ); 
-- Suppliers Table
CREATE TABLE Suppliers ( SupplierID INT PRIMARY KEY, Name VARCHAR(255), MaterialProvided VARCHAR(100) ); 
-- Building Materials Table
CREATE TABLE BuildingMaterials ( MaterialID INT PRIMARY KEY, Name VARCHAR(100), InventoryLevel INT ); 
-- Employees Table
CREATE TABLE Employees ( EmployeeID INT PRIMARY KEY, Role VARCHAR(100), LocationID INT, FOREIGN KEY (LocationID) REFERENCES ConstructionSites(SiteID) );
