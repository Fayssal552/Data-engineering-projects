# Data engineering projects
## Project 1: ETL Pipeline with Airflow: API Data to PostgreSQL, S3, and Athena Integration


In this project, I utilized Apache Airflow to automate the ETL pipeline. The process involved extracting data from an API, transforming it, and then loading it into a Dockerized PostgreSQL database. Subsequently, the data was uploaded to AWS S3 for storage. And use Amazon Athena to run queries on top of my CSV file there by adding a Crawler. There are two DAGs. The first one is used to fetch data from API and send it to postgreSQL. After the data is sent to PostgreSQL a trigger mechanism is run and trigger dag 2. Dag 2 gets data from PostgreSQL and send it to S3 bucket as csv file.

**Services used in this project :** API, ETL Pipline, Docker, Airflow, PostgreSQL, S3, IAM, Glue, Athena

Link to the project : [Snowflake integration with S3](https://prickly-chipmunk-831.notion.site/ETL-Pipeline-with-Airflow-API-Data-to-PostgreSQL-S3-and-Athena-Integration-004311433d4344fd86ab82bceb6e6fc1?pvs=4)
Link to the resources : [Resources](https://github.com/Fayssal552/Data-engineering-projects/tree/main/Airflow_ETL_Postgres_to_S3)

## Project 2: YouTube Analysis Project with S3, Glue, Lambda, Athena, IAM and QuickSight

This project encompasses the following key tasks: 
- Ingesting data from Kaggle
- Designing an ETL pipeline
- Building a scalable data lake using AWS
- Creating a dynamic dashboard for visualizing insights

**Services used in this project :** S3, Glue, Lambda, Athena, IAM and QuickSight

Link: [YouTube Analysis Project](https://prickly-chipmunk-831.notion.site/YouTube-Data-Analysis-933e10620cb6448fb9493c439ef4cbcc?pvs=4)

## Project 3: End-to-End Streaming Project with Spark, Kafka, and Cassandra

In this project, I have built an end-to-end streaming pipeline using Spark, Kafka, and Cassandra. This project enables the consumption of messages from a Kafka topic, processes the data using Spark, and stores the results in Cassandra

**Services used in this project :** Apache Spark, apache Kafka and apache Cassandra

Link: [End-to-End Streaming Project](https://prickly-chipmunk-831.notion.site/Building-an-End-to-End-Streaming-Project-with-Spark-Kafka-and-Cassandra-0e78d35c0bf24c4fbc43285d357ef7f6?pvs=4)



## Project 4: Snowflake integration with S3


In this project, I have created a data pipeline to import YouTube video data using Snowflake and AWS S3. The pipeline involves setting up a database, schema, storage integration, stage, and table in Snowflake. The YouTube video data, stored in a CSV file, is copied into the Snowflake table for further analysis. This project enables efficient data processing and exploration of YouTube video statistics using Snowflake's powerful analytics capabilities.

**Services used in this project :** Snowflake, S3, IAM

Link to the project : [Snowflake integration with S3](https://prickly-chipmunk-831.notion.site/Snowflake-integration-with-S3-072ec3c5dfb54bc7ad9465053e76e95d?pvs=4)
Link to the resources : [Resources](https://github.com/Fayssal552/Data-engineering-projects/tree/main/Snowflake-integration-with-S3)

## Project 5: Building Spotify ETL Using Python


This is a beginner-friendly project aimed at building a simple pipeline. We will utilize Spotify's API to retrieve data, perform basic transformations, and conduct Data Quality checks. Finally, we will load the processed data into a SQLite database.

**Services used in this project :** Spotify API, Python, SQLite

Link to the project : [Snowflake integration with S3](https://prickly-chipmunk-831.notion.site/Building-Spotify-ETL-Using-Python-7cf2802e18bb4cf5961dfa7b3946b757?pvs=4)
Link to the resources : [Resources](https://github.com/Fayssal552/Data-engineering-projects/tree/main/Spotify_etl)


