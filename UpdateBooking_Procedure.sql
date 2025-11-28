DELIMITER //
CREATE PROCEDURE UpdateBooking(bid int, bdt DATE)
BEGIN
UPDATE booking
SET BookingDate = bdt WHERE BookingID = bid;
SELECT CONCAT('Booking ',bid,' updated') AS Confirmation;
END//
DELIMITER ;
CALL UpdateBooking(5,'2022-12-17');
