/***
invoice_totals.sql: Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.
***/

SELECT DISTINCT
  E.FirstName || " " || E.LastName AS "Sales Agent",
  I.Total AS "Invoice Total",
  C.FirstName || C.LastName AS "Customer Name",
  C.Country
FROM Invoice AS I
JOIN Customer AS C
ON I.CustomerId == C.CustomerId
JOIN Employee AS E
ON C.SupportRepId == E.EmployeeId
ORDER BY E.FirstName || " " || E.LastName