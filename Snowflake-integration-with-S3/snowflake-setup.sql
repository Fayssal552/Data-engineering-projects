-- Create the database DEMO
CREATE DATABASE DEMO;

-- Create the schema DEMO_06262023
CREATE SCHEMA DEMO_06262023;

-- Create the storage integration aws_s3_integration for accessing S3
CREATE OR REPLACE STORAGE INTEGRATION aws_s3_integration
  TYPE = EXTERNAL_STAGE
  STORAGE_PROVIDER = 'S3'
  ENABLED = TRUE
  STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::889845221395:role/demo-06262023'
  STORAGE_ALLOWED_LOCATIONS = ('s3://demo-06262023/');

-- Show the list of available integrations
SHOW INTEGRATIONS;

-- Describe the integration aws_s3_integration
DESC INTEGRATION aws_s3_integration;

-- Grant usage privilege on the integration to the role accountadmin
GRANT usage on integration aws_s3_integration to role accountadmin;

-- Create or replace the file format demo_format for CSV files
CREATE OR REPLACE FILE FORMAT demo_format
  TYPE = CSV
  FIELD_DELIMITER = ',',
  SKIP_HEADER = 1;

-- Create or replace the stage demo_aws_stage for accessing files in the S3 bucket
CREATE OR REPLACE STAGE demo_aws_stage
  URL = 's3://demo-06262023/'
  STORAGE_INTEGRATION = aws_s3_integration
  FILE_FORMAT = demo_format;

-- List the objects in the stage demo_aws_stage
LIST @demo_aws_stage

-- Create a temporary table
CREATE OR REPLACE TEMPORARY TABLE demo_CaVideos_info (
  video_id STRING,
  trending_date STRING,
  title STRING,
  channel_title STRING,
  category_id INT,
  publish_time STRING,
  tags STRING,
  views INT,
  likes INT,
  dislikes INT,
  comment_count INT,
  thumbnail_link STRING,
  comments_disabled BOOLEAN,
  ratings_disabled BOOLEAN,
  video_error_or_removed BOOLEAN,
  description STRING
);

-- Copy the data from the CSV file in the stage to the table demo_CaVideos_info
COPY INTO demo_CaVideos_info
FROM @demo_aws_stage/CAvideos.csv
file_format = (format_name=demo_format);

-- Select and display the first 10 rows from the table demo_CaVideos_info
SELECT * FROM demo_CaVideos_info LIMIT 10;