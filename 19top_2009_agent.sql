/***
top_2009_agent.sql: Which sales agent made the most in sales in 2009?

Hint: Use the MAX function on a subquery.
***/
SELECT DISTINCT
  E.FirstName || " " || E.LastName AS "Sales Agent",
  SUM(I.Total) AS InvoiceTotal
FROM Invoice AS I
JOIN Customer AS C
ON I.CustomerId == C.CustomerId
JOIN Employee AS E
ON C.SupportRepId == E.EmployeeId
WHERE
  E.Title = "Sales Support Agent"
  AND strftime("%Y", InvoiceDate) IN ("2009")
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
WHERE
  E.Title == "Sales Support Agent"
  AND strftime("%Y", InvoiceDate) IN ("2009")
GROUP BY E.FirstName || " " || E.LastName
ORDER BY SUM(I.Total) DESC
LIMIT 1
