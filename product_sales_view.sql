Q Assume you have a Sales table with SaleID, ProductID, and SaleAmount. Create a view that
calculates the total sales for each ProductID. Then, attempt to update the base table (Sales) using
the view.
Sales Table:
o SaleID (Primary Key)
o ProductID
o SaleAmount


CREATE TABLE Sales(
    SaleID INT PRIMARY KEY,
    ProductID INT,
    SaleAmount INT
);

INSERT INTO Sales VALUES
(1,101,500),
(2,101,700),
(3,102,300);

CREATE VIEW ProductSales AS
SELECT ProductID,
SUM(SaleAmount) AS TotalSales
FROM Sales
GROUP BY ProductID;

SELECT * FROM ProductSales;

UPDATE ProductSales
SET TotalSales = 1500
WHERE ProductID = 101;
