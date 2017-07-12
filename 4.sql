Alter table mydb.projects add cost int;

UPDATE mydb.projects
SET
    cost = 100
WHERE
    id = 1;

UPDATE mydb.projects
SET
    cost = 200
WHERE
    id = 2;

UPDATE mydb.projects
SET
    cost = 300
WHERE
    id = 3;