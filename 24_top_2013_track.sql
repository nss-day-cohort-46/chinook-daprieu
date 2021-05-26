select
    t.Name as Track,
    SUM(i.InvoiceId) totalSales
from Invoice i
Join InvoiceLine il ON il.InvoiceId=i.InvoiceId
Join Track t ON t.TrackId=il.TrackId
WHERE i.InvoiceDate Like "2013%"
ORDER BY i.InvoiceId DESC
Limit 1
