SELECT c.CustomerID, c.CustomerFirstName, c.CustomerLastName, o.OrderID, TotalCost, MenuName, MenuType
FROM Customer c INNER JOIN booking b ON c.CustomerID = b.CustomerID
INNER JOIN Orders o ON o.BookingID = b.BookingID
INNER JOIN menuorder mo ON mo.OrderID = o.OrderID
INNER JOIN menu m ON mo.MenuID = m.MenuID
WHERE TotalCost > 150
ORDER BY TotalCost;
