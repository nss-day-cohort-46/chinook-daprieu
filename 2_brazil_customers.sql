select
    c.CustomerId,
    c.FirstName,
    c.LastName,
    c.Country
from Customer c
WHERE c.Country = "Brazil"