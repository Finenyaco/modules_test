variable "availability_zone1" {
    type = string
    description = "EC2 Availability Zones"
    default = "ap-east-1a"
}

variable "availability_zone2" {
    type = string
    description = "EC2 Availability Zones"
    default = "ap-east-1b"
}

variable "database_name" {
    type = string
    description = "Name for an automatically created database on cluster creation"
    default = "testdb"
}

variable "username" {
    type = string
    description = "Required unless a snapshot_identifier or replication_source_identifier is provided or unless a global_cluster_identifier is provided when the cluster is the 'secondary' cluster of a global database) Username for the master DB user. Please refer to the RDS Naming Constraints. This argument does not support in-place updates and cannot be changed during a restore from snapshot."
    default = "mydb"
}

variable password {
    type = string
    description = "database password"
    default = "testing123"  
}

variable "engine" {
    type = string
    default = "aurora-postgresql"
}

variable "engine_version" {
    type = string
    default = "14.6"
}

variable "engine_mode" {
    type = string
    default = "provisioned"
}