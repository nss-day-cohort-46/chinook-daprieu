SELECT Count(InvoiceId), BillingCountry
FROM Invoice
GROUP BY BillingCountry
