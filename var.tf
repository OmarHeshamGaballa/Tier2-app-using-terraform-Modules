variable "tag_name" {
   default = "omar-vpc"
}

variable "vpc-cidr" {
   default = "192.168.0.0/16"
}

variable "basename" {
   description = "Prefix used for all resources names"
   default = "omar"
}

#map of maps for create public subnets
variable "prefix" {
   type = map
   default = {
      pub-1 = {
         az = "use1-az1"
         cidr = "192.168.1.0/24"
      }
      
      }
   }
variable "prefix1" {
   type = map
   default = {
    priv-1 = {
         az = "use1-az2"
         cidr = "192.168.2.0/24"
      }
    priv-2 = {
         az = "use1-az3"
         cidr = "192.168.3.0/24"
        }
      
      }
   }
# ec2 instance ami for Linux
variable "ec2_instance_ami" {
  description = "ec2 instance ami id"
  type        = string
  default     = "ami-006dcf34c09e50022"
}


# ec2 instance type
variable "ec2_instance_type" {
  description = "ec2 instance type"
  type        = string
  default     = "t2.micro"
}


# db engine
variable "db_engine" {
  description = "db engine"
  type        = string
  default     = "mysql"
}


# db engine version
variable "db_engine_version" {
  description = "db engine version"
  type        = string
  default     = "5.7"
}


# db name
variable "db_name" {
  description = "db name"
  type        = string
  default     = "my_db"
}


# db instance class
variable "db_instance_class" {
  description = "db instance class"
  type        = string
  default     = "db.t2.micro"
}


# database username variable
variable "db_username" {
  description = "database admin username"
  type        = string
  sensitive   = true
  default = "omar"
}


# database password variable
variable "db_password" {
  description = "database admin password"
  type        = string
  sensitive   = true
  default = "omardb123"
}

