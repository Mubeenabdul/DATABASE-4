-- Insert Statement for ConstructionSites
INSERT INTO ConstructionSites (SiteID, Address, ProjectStatus) VALUES (5, '200 Mountain View, Seattle, WA', 'Planning');
 
-- Insert Statement for Employees
INSERT INTO Employees (EmployeeID, Role, LocationID) VALUES (5, 'Project Manager', 3);
 
-- Update Statement for Projects
UPDATE Projects SET Budget = 400000 WHERE ProjectID = 2;
 

-- Update Statement for BuildingMaterials
UPDATE BuildingMaterials SET InventoryLevel = 2500 WHERE MaterialID = 1;
 
-- Delete Statement for Suppliers
DELETE FROM Suppliers WHERE SupplierID = 4;
 
-- Simple Select Statement from ConstructionSites
SELECT SiteID, Address FROM ConstructionSites WHERE ProjectStatus = 'Planning';
 
-- Select Statement Joining ConstructionSites and Projects
SELECT ConstructionSites.SiteID, ConstructionSites.Address, Projects.Budget FROM ConstructionSites JOIN Projects ON ConstructionSites.SiteID = Projects.SiteID;
 
-- Select Statement Joining Employees and ConstructionSites
SELECT Employees.EmployeeID, Employees.Role, ConstructionSites.Address FROM Employees JOIN ConstructionSites ON Employees.LocationID = ConstructionSites.SiteID;
 
-- Summary Function - Average Budget in Projects
SELECT AVG(Budget) AS AverageBudget FROM Projects;
 
-- Summary Function - Total Inventory in BuildingMaterials
SELECT SUM(InventoryLevel) AS TotalInventory FROM BuildingMaterials;
 
-- Summary Function - Count of Projects per Status
SELECT ProjectStatus, COUNT(*) AS NumberOfProjects FROM ConstructionSites GROUP BY ProjectStatus;
 
-- Multi-Table Query
SELECT Employees.Role, BuildingMaterials.Name, Projects.Budget FROM Employees JOIN ConstructionSites ON Employees.LocationID = ConstructionSites.SiteID JOIN Projects ON ConstructionSites.SiteID = Projects.SiteID JOIN BuildingMaterials ON Projects.SiteID = BuildingMaterials.MaterialID;
