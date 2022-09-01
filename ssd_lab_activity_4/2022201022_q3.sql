DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `calc`(in `a` INT, in `b` INT)
BEGIN
	select customer.CUST_NAME, customer.GRADE from customer where a+b>10000;
END //
DELIMITER ;

call calc(10000,10000);