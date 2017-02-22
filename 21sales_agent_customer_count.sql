/***
sales_agent_customer_count.sql: Provide a query that shows the count of customers assigned to each sales agent.
***/

SELECT DISTINCT
  E.FirstName || " " || E.LastName AS "Sales Agent",
  COUNT(DISTINCT CustomerId) AS "Number of Customers"
FROM Customer AS C
JOIN Employee AS E
ON C.SupportRepId == E.EmployeeId
WHERE E.Title == "Sales Support Agent"
GROUP BY E.FirstName || " " || E.LastName