SELECT MenuName 
FROM menu m INNER JOIN menuorder mo ON m.MenuID = mo.OrderID
WHERE m.MenuID = ANY (SELECT MenuID
					  FROM menuorder
					  WHERE QuantityOrdered > 2) 
