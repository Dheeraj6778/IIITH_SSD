select count(Essn) from works_on where Essn in 
(select Mgr_Ssn from department where Dnumber in
(select Dnum from project where Pname='ProductY')) group by Essn;
