-- Create external table 'student'
CREATE EXTERNAL TABLE IF NOT EXISTS student (
    student_id STRING,
    name STRING,
    marks INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION 'path_to_external_table_location'; -- Replace 'path_to_external_table_location' with the location where your file is stored

-- Load data into 'student' table
LOAD DATA INPATH 'path_to_your_data_file' INTO TABLE student; -- Replace 'path_to_your_data_file' with the path to your data file

-- Create internal table 'student_internal'
CREATE TABLE IF NOT EXISTS student_internal (
    student_id STRING,
    name STRING,
    marks INT,
    course STRING
);

-- Insert data from external table into internal table and add the 'course' column
INSERT INTO TABLE student_internal
SELECT
    student_id,
    name,
    marks,
    NULL AS course
FROM
    student;

-- Alter the table to change column name from 'roll no' to 'student_id'
ALTER TABLE student_internal CHANGE COLUMN student_id roll_no STRING;
