/***
line_item_track_artist.sql: Provide a query that includes the purchased track name AND artist name with each invoice line item.
***/

SELECT DISTINCT
  T.Name AS "Track Name",
  Ar.Name AS "Artist",
  I.*
FROM InvoiceLine AS I
JOIN Track AS T
ON I.TrackId == T.TrackId
JOIN Album AS Al
ON Al.AlbumId == T.AlbumId
JOIN Artist AS Ar
ON Ar.ArtistId == Al.ArtistId