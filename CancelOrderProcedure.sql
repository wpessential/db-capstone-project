CREATE DEFINER=`souhila`@`localhost` PROCEDURE `CancelOrder`(IN p INT)
BEGIN
DELETE FROM orders WHERE OrderID = p;
SELECT CONCAT('Order ', p, ' is cancelled') AS Confirmation; 
END