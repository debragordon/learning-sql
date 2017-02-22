/***
line_items_per_invoice.sql: Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY
***/
SELECT DISTINCT
  InvoiceId,
  COUNT(distinct InvoiceLineId) AS "Invoice Lines"
FROM InvoiceLine
GROUP BY InvoiceId