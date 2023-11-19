-- Construction Sites
Select * from ConstructionSites;
LOAD DATA LOCAL INFILE 'D:\\Abdul Mubeen\\Database files\\ConstructionSites.csv' INTO TABLE ConstructionSites FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS (SiteID, Address, ProjectStatus);
Select * from ConstructionSites;
 
-- Projects
Select * from Projects;
LOAD DATA LOCAL INFILE 'D:\\Abdul Mubeen\\Database files\\Projects.csv' INTO TABLE Projects FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (ProjectID, Budget, Deadline, SiteID);
Select * from Projects;
 

-- Suppliers
Select * from Suppliers;
LOAD DATA LOCAL INFILE 'D:\\Abdul Mubeen\\Database files\\Suppliers.csv' INTO TABLE Suppliers FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS (SupplierID, Name, MaterialProvided);
Select * from Suppliers;
 
-- Building Materials
Select * from BuildingMaterials;
LOAD DATA LOCAL INFILE 'D:\\Abdul Mubeen\\Database files\\BuildingMaterials.csv' INTO TABLE BuildingMaterials FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (MaterialID, Name, InventoryLevel);
Select * from BuildingMaterials;
 
-- Employees
Select * from Employees;
LOAD DATA LOCAL INFILE 'D:\\Abdul Mubeen\\Database files\\Employees.csv' INTO TABLE Employees FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (EmployeeID, Role, LocationID);
Select * from Employees;