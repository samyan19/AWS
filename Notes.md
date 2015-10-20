# AWS Notes

### Amazon AWS Services We Need to Know Before We Begin With RDS

* There are many Amazon's *Services* we can use outside of RDS.
* SQL Server DBAs will spend most of their time working with RDS and EC2 but it's good to know what's availabile to use.
* EC2 are virtual computing environments, known as instances
* We have two options for spinning up SQL Server in AWS. EC2 and RDS.
* Various configurations of CPU, memory, storage, and networking capacity for your instances, known as instance types
* Secure login information for your instances using key pairs (AWS stores the public key, and you store the private key in a secure place)
* Persistent storage volumes for your data using Amazon Elastic Block Store (Amazon EBS), known as Amazon EBS volumes
* Multiple physical locations for your resources, such as instances and Amazon EBS volumes, known as regions and Availability Zones
* We can choose from various preconfigured templates know as AMIs or Amazon Machine Images
* A VPC is a virtual private cloud.
* If you create a new AWS account you will get a default VPC. You can use this one or create your own.
* Public IP - accessible from the net, Private IP - internal

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

