Alter table mydb.developers add salary int;
UPDATE mydb.developers
SET
    salary = 1000
WHERE
    id = 1;

UPDATE mydb.developers
SET
    salary = 2000
WHERE
    id = 2;

UPDATE mydb.developers
SET
    salary = 3000
WHERE
    id = 3;
