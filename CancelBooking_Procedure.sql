DELIMITER //
CREATE PROCEDURE CancelBooking(bid int)
BEGIN
 DELETE FROM booking
 WHERE BookingID = bid;
SELECT CONCAT('Booking ',bid,' cancelled') AS Confirmation;
END//
DELIMITER ;
CALL CancelBooking(5);
