select count(Essn) from dependent where Essn in
(select Mgr_ssn from department where Dnumber in 
(select Dnumber from dept_locations group by Dnumber having count(Dnumber)>1)) group by Essn;