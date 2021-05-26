SELECT
  ar.Name as ArtistName,
  COUNT(il.TrackId) as TracksSold,
  SUM(il.UnitPrice) as Total
FROM Album al
INNER JOIN Artist ar on ar.ArtistId = al.ArtistId
INNER JOIN Track t on t.AlbumId = al.AlbumId
INNER JOIN InvoiceLine il on il.TrackId = t.TrackId
GROUP BY ArtistName
ORDER BY Total DESC
LIMIT 3