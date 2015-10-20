#RDS

* General Purpose - single digit ms latency
* highest SP level - 2008r2 SP3 and 2012 SP2
* db instance is environment running in cloud
* instance with HA - synchronous replication - mirroring (AV's) - US-East/West/Ireland
* 1 instance -> multiple db's
* 40 instance under BYOL, 10 under licence included
* SSL encrpytion between clietn and destination
* cannot change port once the instance has been spun up
* *RDS encryption* AES256 enrncryption at rest (snapshots, storage, backups, read replicas)
* backup retention 1 day
* 30 minutes (minimum)  maintenance windows
* max db per instance is 30
* cannot rename db
* max storage is 1024
* 200GB min standard, 20GB web & express
* no backup and restore
* can't increase storage without rebuild
* Create table and insert into to look at the latency (virtual io stats)
* ran for 13 minutes

* When we "spin up" our RDS instance we have a laundry list of database options to specify.
* How we choose these options will define how the instance performs.
* The vast majority of the time we will use RDS to spin up our instances. (2008R2 and 2012)
* We use RDS because it's been specailly designed for OLTP database engines.
* When we use RDS we get automated backups, high availability mirroring and easy deployments.
* With RDS we lose administrator access to the underlying OS features. We can not RDP into a RDS instance.
* There are some limitations to RDS we should know prior to "spinning up" our RDS instance.
* Push button high availability is one of the greatest features of RDS.
* NOTE: All databases on an instance that has been configured for Multi-AZ HA are *Mirrored.* This was not in the lessons so * please take not of this.
