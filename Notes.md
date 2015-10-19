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

###RDS
* General Purpose single digit ms
* db instance is environment running in cloud
* 1 instance -> multiple db's
* 40 instance under BYOL, 10 under licence included
* SSL encrpytion between clietn and destination
* cannot change port once the instance has been spun up
* AES256 enrncryption at rest
* backup retention 1 day
* 30 minutes maintenance windows
* max db is 30
* max storage is 1024
* no backup and restore
* can't increase storage without rebuild

