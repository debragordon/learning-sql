/***
top_country.sql: Which country's customers spent the most?
***/

SELECT DISTINCT
  BillingCountry AS Country,
  SUM(Total) AS "Total Sales"
FROM Invoice
GROUP BY BillingCountry
ORDER BY SUM(Total) DESC

/* OR adding the last line gives just the first country */

SELECT DISTINCT
  BillingCountry AS Country,
  SUM(Total) AS "Total Sales"
FROM Invoice
GROUP BY BillingCountry
ORDER BY SUM(Total) DESC
LIMIT 1