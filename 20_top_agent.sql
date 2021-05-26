SELECT e.FirstName || " " || e.LastName as "Sales Rep", 
SUM(i.Total) as "Total Sales" 
FROM Employee e, Customer c, Invoice i 
Where e.EmployeeId == c.SupportRepId 
AND c.CustomerId == i.CustomerId 
GROUP BY e.FirstName || " " || e.LastName 
ORDER BY SUM(i.Total) DESC 
LIMIT 1;