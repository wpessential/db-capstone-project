CREATE PROCEDURE GetMaxQuantity()
SELECT MAX(QuantityOrdered) FROM menuorder;
