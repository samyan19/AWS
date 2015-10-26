#Pluralsight Notes

##DBA Responsibilities in the Cloud
* performance tuning, queries
* database security
* index tuning

##Why cloud?
* speed
* common tasks automation
* more value add
* increased effecieny and revenue
 
##ShowStoppers
* 2008 r2, 2012
* 30 databases and max size 4TB
* No SSIS/SSRS/SSAS - needs seperate VM
* No windows auth
* storage cannot be adjusted after creation

##Instance choices
* on demand, reserved instance (for prod - cheaper the longer it is reserved for)
* m3 - general balanced
* r3 - same core, double ram- prod sql
* t2 - 20% baseline and burst up - small, medium, appps that are only used sometimes
* m1,m2 not reccommended as they are old gen machines *read more*
* general - small to medium db (burst 3 to 3000 IOPS) - *where can you see your burst credits*
* provisioned - 1000-20000IOPS, single digit latency - IO intensive, high perf db
* magnetic - 3TB limit, 100 IOP average, higher latency, non-prod/archival
* instance bandwidth - dedicated EBS best for SQL *read more* 
* http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html *guide*

##Network
* Availability Zone = datacenter
* vpc =virtual network,span multiple AZ
* db subnet group =subnet group that contains RDS addresses

##Config
* HA - mirroring
* Encryption - TDE *read more - what does encrypt at rest mean??*
* parameter groups to set trace flags, sp_configure 

##Command Line Interface
* http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-set-up.html
* http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAM.html#d0e12854 *IAM and policies*

##Admin
* cant configure server directly
* cant enable features
* use console to reset password
* agent no maint plans or command lines with agent
* agent - no e-mail notifications (better use cloudwatch)
* agent - cannot delete job through gui
* log files, daily 7 days, 7 day retention
* logfiles = d:\RDSDBDATA
 
##Data Migration
* Cannot restore from backup (bak)
* generate scripts, import/export wiz, bcp command line, sql migration wizard
* MAKE SURE LOGINS ARE CREATED (plus other server level objects)
* script data only work for small databases
* generate scripts - 1) script for target version 2) triggers 3) script collation 4) object level permissions
* service broker not supported
* you cannot rename a database in AWS
* create schema then import data (wizard or bcp)
* bcp -E (Insert Identity) -n(use native datatype) -C(no data type conversion) -S (servername) -T (win auth)
* SQL Database Migration Wizard - http://sqlazuremw.codeplex.com/

##Backups and HA
* sql backups, on demand snapshots
* billed seperately - 200GB db = 200GB of free backup
* backup retention 35 days max - 0=disabling backups and restarts your instance
* compression on by default
* TDE for encrypted backups
* point in time restore - instance level, new instance has to be created
* user db full 
* log backups every 5 mins
* if you change to simple RDS sets back to full when the full backup runs 
* simple=set backup retention to 0
* backup window max 3 - RDS does not cancel overrunning jobs
* snap - can be moved accross regions
* snap - good for - rollback backup, project milestones, send copy to different region, save on decommission
* snap - snap with TDE cannot be restored to another region
* failover - synchronous mirroring
* failover triggers - AZ outage, instance failure, instance type fails, patching, manual
* amazon updates dns - low TTL to pick up new 
* *what is apply immediately*

##Limitations
* no sysadmin
* *how do you translate groups*
* SSIS, SSIS, SSAS can be deployed on seperate ec2 vm
* linked server - can link in (premise to rds) but not link out - data needs to be copied
* SQLAgentUserRole default - use one account for all jobs
* Size and storage type cannot be changed once created 
* repl - publisher to subscriber(aws) works but not publisher (cloud)
* setting up replication requires the actual server name to connect as subscriber. workaround in aws is to set up an alias both 32 and 64 bit 
* push subscription only
* no filestream/service broker/availability group/db mail/sql server audit/only safe clr/server level triggers/pbm/msdtc/utc only
* 

