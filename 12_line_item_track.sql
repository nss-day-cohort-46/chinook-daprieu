
SELECT il.InvoiceLineId, il.InvoiceId, il.TrackId, t.Name as TrackName, il.UnitPrice, il.Quantity
FROM Track t
JOIN InvoiceLine il On t.TrackId=il.TrackId
ORDER BY il.InvoiceLineId






