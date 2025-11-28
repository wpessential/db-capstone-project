DELIMITER //
CREATE PROCEDURE CheckBooking(IN d DATE, IN t INT)
BEGIN
SELECT TableNO INTO @v FROM booking WHERE BookingDate = d AND TableNo = t;
IF @v IS NULL THEN SELECT CONCAT('Table ',t,' is available') AS 'Booking Status';
ELSE  SELECT CONCAT('Table ',t,' is already booked') AS 'Booking Status';
END IF;
END //
DELIMITER ;
