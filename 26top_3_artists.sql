/***
top_3_artists.sql: Provide a query that shows the top 3 best selling artists.
***/

SELECT DISTINCT
  AR.Name AS Artist,
  COUNT(DISTINCT I.InvoiceId) AS "Total Units Sold"
FROM Invoice AS I
JOIN InvoiceLine IL
ON I.InvoiceId == IL.InvoiceId
JOIN Track AS T
ON IL.TrackId == T.TrackId
JOIN Album AS AL
ON T.AlbumId == AL.Albumid
JOIN Artist AS AR
ON AL.ArtistId == AR.ArtistId
GROUP BY AR.Name
ORDER BY COUNT(DISTINCT I.InvoiceId) DESC
LIMIT 3