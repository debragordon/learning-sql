/***
sales_agent_invoices.sql: Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.
***/

SELECT DISTINCT
  E.FirstName || " " || E.LastName AS "Sales Agent",
  I.*
FROM Invoice as I
JOIN Customer as C
ON I.CustomerId = C.CustomerId
JOIN Employee as E
ON C.SupportRepId = E.EmployeeId
ORDER BY E.FirstName || " " || E.LastName