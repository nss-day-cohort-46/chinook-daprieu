select
    i.BillingCountry,
    SUM(i.InvoiceId) totalSales
from Invoice i
GROUP BY BillingCountry