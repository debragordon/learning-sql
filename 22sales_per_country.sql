/***
sales_per_country.sql: Provide a query that shows the total sales per country.
***/

SELECT DISTINCT
  BillingCountry AS Country,
  SUM(Total) AS "Total Sales"
FROM Invoice
GROUP BY BillingCountry
ORDER BY BillingCountry ASC
