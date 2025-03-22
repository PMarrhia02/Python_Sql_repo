USE COLLEGE;
select * from teachers;

-- import table data into csv file  
SELECT * FROM teachers 
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/teachers.csv'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

SHOW VARIABLES LIKE 'secure_file_priv';


-- export data 
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/teachers_export.csv'
INTO TABLE teachers
FIELDS TERMINATED BY ','  
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from teachers;


