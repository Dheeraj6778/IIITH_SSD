DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `fun`(in `workArea` varchar(100))
BEGIN
	select customer.CUST_NAME from customer where customer.WORKING_AREA=workArea;
END //
DELIMITER ;

call fun('Bangalore');