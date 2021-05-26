SELECT
    i.InvoiceId,
    i.Total,
    i.BillingCountry,
    c.FirstName As CustomerName,
    e.FirstName As SalesAgentName
FROM Customer c
Join Employee e On c.SupportRepId=e.EmployeeId
Join Invoice i ON c.CustomerId=i.CustomerId
ORDER BY InvoiceId ASC