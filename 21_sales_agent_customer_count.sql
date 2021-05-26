SELECT e.FirstName || " " || e.LastName as Emplyee,
    COUNT(c.CustomerId) as NumOfCustomers
From Employee e
Join Customer c ON c.SupportRepId=e.EmployeeId
Group BY e.EmployeeId