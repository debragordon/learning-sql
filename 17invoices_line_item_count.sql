/***
invoices_line_item_count.sql: Provide a query that shows all Invoices but includes the # of invoice line items.
***/

SELECT DISTINCT
  COUNT(DISTINCT IL.InvoiceLineId) AS "Invoice Line Total",
  I.InvoiceId,
  I.CustomerId,
  I.InvoiceDate,
  I.BillingAddress,
  I.BillingCity,
  I.BillingState,
  I.BillingCountry,
  I.BillingPostalCode,
  I.Total
FROM Invoice AS I
JOIN InvoiceLine AS IL
ON I.InvoiceId == IL.InvoiceId
GROUP BY
  I.InvoiceId,
  I.CustomerId,
  I.InvoiceDate,
  I.BillingAddress,
  I.BillingCity,
  I.BillingState,
  I.BillingCountry,
  I.BillingPostalCode,
  I.Total