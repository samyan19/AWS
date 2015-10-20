CREATE TABLE Test (ID bit)

DECLARE @endDate datetime
set @endDate = DATEADD(hh,1,GETDATE()) --1 hour from now
WHILE GETDATE() < @endDate
BEGIN
INSERT INTO Test VALUES (1)
WAITFOR DELAY '00:00:02';
END
