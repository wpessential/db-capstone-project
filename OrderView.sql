CREATE VIEW OrdersView AS SELECT o.OrderID, m.QuantityOrdered, o.TotalCost FROM menuorder AS m  
INNER JOIN orders AS o ON m.OrderID = o.OrderID
WHERE m.QuantityOrdered > 2;


 