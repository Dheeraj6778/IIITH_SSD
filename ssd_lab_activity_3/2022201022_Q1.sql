select Fname, Minit, Lname, Ssn from employee where Ssn in
(select Super_ssn from employee where Ssn in
(select Essn from works_on group by Essn having sum(Hours)<40));
