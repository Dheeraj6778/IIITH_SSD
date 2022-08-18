select count(Dnumber) from dept_locations where Dnumber in
(select Dnumber from department where Mgr_ssn in 
(select Essn from dependent group by Essn having count(Sex='F')>=2)) group by Dnumber;