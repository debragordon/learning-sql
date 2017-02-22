/***
country_invoices.sql: Provide a query that shows the # of invoices per country. HINT: GROUP BY
***/

SELECT BillingCountry, COUNT(Distinct InvoiceId)
FROM Invoice
GROUP BY BillingCountry