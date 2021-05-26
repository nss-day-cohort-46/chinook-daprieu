select
    e.employeeId,
    i.InvoiceDate,
    e.FirstName || "" ||e.LastName emp,
    SUM(i.total) totalSales
    
from Employee e
JOIN Invoice i ON i.CustomerId=c.CustomerId
JOIN Customer c ON c.SupportRepId=e.EmployeeID
WHERE i.InvoiceDate Like "2009%"
GROUP BY EmployeeId 
ORDER BY SUM(i.Total) DESC 
LIMIT 1; 