variable "aws_region" {
  default = "eu-west-1"
}
variable "vpc_name" {
  type = string 
  default = "labvpc-01"
}

variable "vpc_cidr_block" {
  type = string 
  default = "10.0.0.0/16"
}

variable "vpc_availability_zones" {
  type = list(string)
  default = ["eu-west-1a", "eu-west-1b"]
}

variable "vpc_public_subnets" {
  type = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "vpc_private_subnets" {
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc_enable_nat_gateway" {
  type = bool
  default = true  
}

variable "vpc_single_nat_gateway" {
  type = bool
  default = true
}



variable "cluster_name" {
  type        = string
  default     = "labekscluster"
}

variable "cluster_service_ipv4_cidr" {
  type        = string
  default     = null
}

variable "cluster_version" {
  type = string
  default     = null
}
variable "cluster_endpoint_private_access" {
  type        = bool
  default     = false
}

variable "cluster_endpoint_public_access" {
  type        = bool
  default     = true
}

variable "cluster_endpoint_public_access_cidrs" {
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "rds_subnet_group_name" {
  default = "rds-subnet-group"
}

variable "rds_sg" {
  default = "rds_mysql_sg"
}

variable "rds_az" {
  default = "eu-west-1a"
}

variable "rds_db_name" {
  default = "wordpressdb"
}

variable "rds_engine" {
  default = "mysql"
}

variable "rds_engine_version" {
  default = "8.0.35"
}

variable "rds_instance_class" {
  default = "db.t3.micro"
}

variable "rds_db_username" {
  default = "admin"
}

variable "rds_db_password" {
  default = "admin1234"
}

variable "rds_database_name" {
  default = "wordpress"
}

variable "rds_parameter_group_name" {
  default = "default.mysql8.0"
}

variable "rds_storage_size" {
  default = 10
}

variable "rds_skip_final_snapshot" {
  default = true
}