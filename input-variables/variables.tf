variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "vpc_name" {
  type    = string
  default = "demo_vpc"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "private_subnets" {
  default = {
    "private_subnet_1" = 1
    "private_subnet_2" = 2
    "private_subnet_3" = 3
  }
}

variable "public_subnets" {
  default = {
    "public_subnet_1" = 1
    "public_subnet_2" = 2
    "public_subnet_3" = 3
  }
}

variable "var_sub_cidr" {
  description = "leaning terraform variable"
  type        = string
  default     = "10.0.140.0/24" # if you dont mention default it will ask for value on terraform apply cmd
}


variable "var_sub_az" {
  description = "availability zone for var subnet"
  type        = string
  default     = "us-east-1a"
}

variable "sub_auto_ip" {
  description = "auto ip for var sub"
  type        = bool
  default     = false
}
