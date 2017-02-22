/***
top_5_tracks.sql: Provide a query that shows the top 5 most purchased tracks over all.
***/

SELECT DISTINCT
  T.Name AS "Track Title",
  COUNT(DISTINCT I.InvoiceId) AS "Total Purchases"
FROM Invoice AS I
JOIN InvoiceLine AS IL
ON I.InvoiceId == IL.InvoiceID
JOIN Track AS T
ON T.TrackId == IL.TrackId
GROUP BY T.Name
ORDER BY COUNT(DISTINCT I.InvoiceId)
LIMIT 5