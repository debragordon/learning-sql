/***
invoices_line_item_count.sql: Provide a query that shows all Invoices but includes the # of invoice line items.
***/

SELECT *
COUNT(Distinct InvoiceId)
FROM Invoice

/* ^^ DOESN'T WORK ^^ */