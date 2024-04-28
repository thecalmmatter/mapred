CREATE EXTERNAL TABLE IF NOT EXISTS student (
    student_id STRING,
    name STRING,
    marks INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/students_file/students';
LOAD DATA INPATH '/students_file/students' INTO TABLE student;
CREATE TABLE IF NOT EXISTS student_internal (
    student_id STRING,
    name STRING,
    marks INT,
    course STRING
);

INSERT INTO TABLE student_internal
SELECT
    student_id,
    name,
    marks,
    NULL AS course
FROM
    student;

ALTER TABLE student_internal CHANGE COLUMN student_id roll_no STRING;
