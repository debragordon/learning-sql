/***
total_invoices_{year}.sql: How many Invoices were there in 2009 and 2011?
***/

SELECT distinct
  strftime('%Y',InvoiceDate) AS "Invoice Year",
  COUNT(distinct InvoiceId) AS "Total Invoices"
FROM Invoice
WHERE strftime('%Y',InvoiceDate) IN ('2009','2011')
GROUP BY
  strftime('%Y',InvoiceDate)