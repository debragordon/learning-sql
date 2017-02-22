/***
sales_agent_total_sales.sql: Provide a query that shows total sales made by each sales agent.
***/

SELECT DISTINCT
  E.FirstName || " " || E.LastName AS "Employee Name",
  SUM(I.Total) AS "Total Sales"
FROM Invoice AS I
JOIN Customer AS C
ON I.CustomerId == C.CustomerId
JOIN Employee AS E
ON C.SupportRepId == E.EmployeeId
WHERE E.Title == "Sales Support Agent"
GROUP BY E.FirstName || " " || E.LastName