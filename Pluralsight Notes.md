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

##Network
* Availability Zone = datacenter
* vpc =virtual network,span multiple AZ
* db subnet group =subnet group that contains RDS addresses

##Config
* HA - mirroring
* Encryption - TDE *read more - what does encrypt at rest mean??*
* parameter groups to set trace flags, sp_configure 
* 
##Command Line Interface
* http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-set-up.html
* http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAM.html#d0e12854 *IAM and policies*

