
select
    e.employeeId,
    i.InvoiceDate,
    e.FirstName || "" ||e.LastName emp,
    SUM(i.InvoiceId) totalSales
    
from Employee e
JOIN Invoice i ON i.CustomerId=c.CustomerId
JOIN Customer c ON c.SupportRepId=e.EmployeeID

GROUP BY EmployeeId