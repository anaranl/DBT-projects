---- QUERY CREATED TO HAVE AN COUNT OF ROWS FROM 5 TABLES TO COMPARE WITH OTHER DB ----

{{ config(materialized='table') }}

WITH Export_table1_rows AS (
    SELECT 'Export_table1' AS TableName, COUNT(*) AS RowCount
    FROM {{ ref('Export_table1') }}
),
Export_table2_rows AS (
    SELECT 'Export_table2' AS TableName, COUNT(*) AS RowCount
    FROM {{ ref('Export_table2') }}
),
Export_table3_rows AS (
    SELECT 'Export_table3' AS TableName, COUNT(*) AS RowCount
    FROM {{ ref('Export_table3') }}
),
Export_table4_rows AS (
    SELECT 'Export_table4' AS TableName, COUNT(*) AS RowCount
    FROM {{ ref('Export_table4') }}
),
Export_table5_rows AS (
    SELECT 'Export_table5' AS TableName, COUNT(*) AS RowCount
    FROM {{ ref('Export_table5') }}
)

SELECT * FROM Export_table1_rows
UNION ALL
SELECT * FROM Export_table2_rows
UNION ALL
SELECT * FROM Export_table3_rows
UNION ALL
SELECT * FROM Export_table4_rows
UNION ALL
SELECT * FROM Export_table5_rows

