/***
top_media_type.sql: Provide a query that shows the most purchased Media Type.
***/

Select DISTINCT
  M.Name AS "Media Type",
  COUNT(DISTINCT I.InvoiceId) AS "Total Sold"
FROM MediaType AS M
JOIN Track AS T
ON M.MediaTypeId == T.MediaTypeId
JOIN InvoiceLine AS IL
ON T.TrackId == IL.TrackId
JOIN Invoice AS I
ON I.InvoiceId == IL.InvoiceId
GROUP BY M.Name
ORDER BY COUNT(DISTINCT I.InvoiceId) DESC

/* OR adding the last line gives just the Top Kind */

Select DISTINCT
  M.Name AS "Media Type",
  COUNT(DISTINCT I.InvoiceId) AS "Total Sold"
FROM MediaType AS M
JOIN Track AS T
ON M.MediaTypeId == T.MediaTypeId
JOIN InvoiceLine AS IL
ON T.TrackId == IL.TrackId
JOIN Invoice AS I
ON I.InvoiceId == IL.InvoiceId
GROUP BY M.Name
ORDER BY COUNT(DISTINCT I.InvoiceId) DESC
LIMIT 1