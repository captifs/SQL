



alter trigger TriggerInsert on Customers
after insert
as
begin
insert into Customers_Adrian_Audit1
(CustomerTitle,CustomerFirstName,CustomerLastName,CustomerAccount,WhoChanged,WhenChanged,WhichCommand)
select i.CustomerTitle,i.CustomerFirstName,i.CustomerLastName,i.CustomerAccount, SUSER_SNAME(), getdate(),'INSERT'
from inserted i
end
go


select * from Customers_Adrian_Audit1 order by WhenChanged
INSERT INTO Customers VALUES ('Mr.','Johnny','First','AW0000123')
INSERT INTO Customers VALUES ('Mr.','Adrian','Second','AW031234')
___________________________________________________________________________________________________________________________

alter trigger TriggerDelete on Customers
after delete
as
begin
insert into Customers_Adrian_Audit1
(CustomerTitle,CustomerFirstName,CustomerLastName,CustomerAccount,WhoChanged,WhenChanged,WhichCommand)
select d.CustomerTitle,d.CustomerFirstName,d.CustomerLastName,d.CustomerAccount, SUSER_SNAME(), getdate(),'DELETE'
from deleted d
end
go

DELETE FROM Customers Where CustomerFirstName = 'Whoid'
__________________________________________________________________________________________________________________________

ALTER TRIGGER TriggerDelete  ON Customers
FOR UPDATE 
AS  
 insert into Customers_Adrian_Audit1
(CustomerTitle,CustomerFirstName,CustomerLastName,CustomerAccount,WhoChanged,WhenChanged,WhichCommand)
      SELECT d.CustomerTitle,d.CustomerFirstName,d.CustomerLastName,d.CustomerAccount, SUSER_SNAME(), getdate(),'UPDATE'
        FROM Deleted d
        INNER JOIN Inserted i ON i.CustomerAccount = d.CustomerAccount
        WHERE i.CustomerFirstName <> d.CustomerFirstName


UPDATE dbo.Customers
SET
CustomerFirstName = 'Oanaa'
WHERE CustomerFirstName = 'oana'

SELECT * FROM Customers_Adrian_Audit1
SELECT * FROM Customers WHERE CustomerFirstName in ('Oanaa')
