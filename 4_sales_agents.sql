select
    e.employeeId,
    e.FirstName,
    e.LastName,
    e.Title
from Employee e
WHERE e.Title Like "%Agent%"