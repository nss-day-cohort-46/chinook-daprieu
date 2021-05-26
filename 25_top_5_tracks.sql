SELECT COUNT(il.TrackId),
    t.Name
FROM InvoiceLine il
JOIN Track t ON t.TrackId == il.TrackId 
GROUP BY t.NAME 
ORDER BY il.TrackId DESC
LIMIT 5
