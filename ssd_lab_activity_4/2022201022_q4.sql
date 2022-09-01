DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `curse`()
BEGIN
	declare c_name varchar(20);
    DECLARE c_city varchar(20);
    declare c_country varchar(20);
    declare c_grade varchar(20);
	declare cursor_cust cursor for select CUST_NAME,CUST_CITY,CUST_COUNTRY,GRADE from customer WHERE AGENT_CODE LIKE 'A00%';
    open cursor_cust;
    fetch cursor_cust into
    c_name,c_city,c_country,c_grade;
     LOOP
		IF @@FETCH_STATUS=0 
        THEN
			LEAVE label;
         END IF;
			select c_name, c_city,c_country,c_grade;
			fetch next from cursor_cust into
			c_name,
			c_city,
			c_country,
			c_grade;
		END LOOP
	close cursor_cust;
END
DELIMITER ;

call curse();