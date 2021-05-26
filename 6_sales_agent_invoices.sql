SELECT
    i.InvoiceId,
    e.FirstName,
    e.LastName,
    c.SupportRepId
FROM Customer c
Join Employee e On c.SupportRepId=e.EmployeeId
Join Invoice i ON c.CustomerId=i.CustomerId
ORDER BY InvoiceId ASC

