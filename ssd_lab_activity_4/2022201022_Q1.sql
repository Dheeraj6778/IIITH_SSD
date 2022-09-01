DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `sum1`(in `a` INT, in `b` INT,out `res` INT)
BEGIN
	Set res = a + b;
END //
DELIMITER ;

call sum1(2,9,@ss);
select @ss;
