SELECT
  MediaType,
  MAX(TotalSales)
FROM
  (SELECT
      mt.Name as MediaType,
      SUM(t.UnitPrice) as TotalSales
    FROM MediaType mt
    INNER JOIN Track t on t.MediaTypeId = mt.MediaTypeId
    INNER JOIN InvoiceLine il on il.TrackId = t.TrackId
    GROUP BY MediaType
  )