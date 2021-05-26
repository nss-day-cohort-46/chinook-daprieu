Select i.*,
    COUNT(il.InvoiceLineId)
From Invoice i
LEFT Join InvoiceLine il ON il.InvoiceId=i.InvoiceId
GROUP BY i.InvoiceId