/***
top_2013_track.sql: Provide a query that shows the most purchased track of 2013.
***/

SELECT DISTINCT
  T.Name AS "Track Title",
  COUNT(DISTINCT I.InvoiceId) AS "Total Purchases"
FROM Invoice AS I
JOIN InvoiceLine AS IL
ON I.InvoiceId == IL.InvoiceID
JOIN Track AS T
ON T.TrackId == IL.TrackId
AND strftime("%Y", InvoiceDate) IN ("2013")

/*I Think ^ is wrong*/