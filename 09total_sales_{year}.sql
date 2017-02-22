/***
total_sales_{year}.sql: What are the respective total sales for each of those years?
***/
SELECT distinct
  strftime('%Y',InvoiceDate) AS "Invoice Year",
  SUM(distinct Total) AS "Total Sales"
FROM Invoice
WHERE strftime('%Y',InvoiceDate) IN ('2009','2011')
GROUP BY strftime('%Y',InvoiceDate)