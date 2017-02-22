/***
sales_agent_invoices.sql: Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.
***/

SELECT DISTINCT
  E.FirstName || " " || E.LastName AS "Sales Agent",
  I.*
FROM Invoice AS I
JOIN Customer AS C
ON I.CustomerId == C.CustomerId
JOIN Employee AS E
ON C.SupportRepId == E.EmployeeId
ORDER BY E.FirstName || " " || E.LastName