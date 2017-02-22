/***
top_agent.sql: Which sales agent made the most in sales over all?
***/

SELECT DISTINCT
  E.FirstName || " " || E.LastName AS "Sales Agent",
  SUM(I.Total) AS InvoiceTotal
FROM Invoice AS I
JOIN Customer AS C
ON I.CustomerId == C.CustomerId
JOIN Employee AS E
ON C.SupportRepId == E.EmployeeId
WHERE E.Title == "Sales Support Agent"
GROUP BY E.FirstName || " " || E.LastName
ORDER BY SUM(I.Total) DESC

/* OR adding the last line gives just the first name */

SELECT DISTINCT
  E.FirstName || " " || E.LastName AS "Sales Agent",
  SUM(I.Total) AS InvoiceTotal
FROM Invoice AS I
JOIN Customer AS C
ON I.CustomerId == C.CustomerId
JOIN Employee AS E
ON C.SupportRepId == E.EmployeeId
WHERE E.Title == "Sales Support Agent"
GROUP BY E.FirstName || " " || E.LastName
ORDER BY SUM(I.Total) DESC
LIMIT 1
