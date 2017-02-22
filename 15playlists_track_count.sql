/***
playlists_track_count.sql: Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.
***/

SELECT DISTINCT
  P.PlaylistId,
  P.Name,
  COUNT(distinct PL.TrackId) AS "Track Count"
FROM Playlist AS P
JOIN PlaylistTrack AS PL
ON P.PlaylistId == PL.PlayListId
GROUP BY P.PlaylistId