{{ config(schema='staging') }}

SELECT
  customer_id,
  LOWER(email) AS email,
  country
FROM {{ source('raw', 'customers') }}
