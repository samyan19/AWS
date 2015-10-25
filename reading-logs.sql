EXEC rdsadmin.dbo.rds_read_error_log @index = 0, @type = 1;

EXEC rdsadmin.dbo.rds_read_error_log @index = 0, @type = 2;


SELECT * 
FROM fn_trace_gettable('D:\rdsdbdata\Log\log.trc', 1);

SELECT * FROM sys.fn_xe_file_target_read_file('D:\rdsdbdata\Log\*.xel', null, null, null);
