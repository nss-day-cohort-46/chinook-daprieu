SELECT il.InvoiceLineId, il.InvoiceId, il.TrackId, t.Name as Track, Art.Name as Artist, il.UnitPrice, il.Quantity
FROM Track t
JOIN InvoiceLine il On t.TrackId=il.TrackId
JOIN Album a ON t.AlbumId=a.AlbumID
Join Artist Art On a.ArtistId=Art.ArtistId
ORDER BY il.InvoiceLineId