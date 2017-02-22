/***
tracks_no_id.sql: Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.
***/

SELECT DISTINCT
  A.Title AS "Album Name",
  M.Name AS "File Type",
  G.Name AS "Genre Name"
FROM Track AS T
LEFT JOIN Album AS A
ON T.AlbumId == A.AlbumId
LEFT JOIN MediaType AS M
ON T.MediaTypeId == M.MediaTypeId
LEFT JOIN Genre AS G
ON T.GenreId == G.GenreId