/***
line_item_track.sql: Provide a query that includes the purchased track name with each invoice line item.
***/

SELECT DISTINCT
  T.Name AS "Track Name",
  I.*
FROM InvoiceLine as I
JOIN Track as T
ON I.TrackId = T.TrackId