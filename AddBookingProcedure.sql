DELIMITER //
CREATE PROCEDURE AddBooking(bid INT,bdt DATE,tn INT, cid INT)
BEGIN
INSERT INTO booking VALUES (bid,bdt,tn,cid);
SELECT 'New Booking Added' AS Confirmation ;
END//