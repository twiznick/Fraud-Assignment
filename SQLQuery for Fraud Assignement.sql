--Select *
--From FraudAssignment..Transferhistory

--Summary of the Client's Transaction history

Select Type, COUNT(Type) as TransactionCount, SUM(Amount) as Total_Amount
From FraudAssignment..Transferhistory
Group by Type
Order by Total_Amount Desc;