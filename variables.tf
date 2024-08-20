variable "vpc-cidr-block" {
  description = "VPC Block for CIDR"

}

variable "vpc-name" {
  description = "VPC Name"
}

variable "public-subnet-1-cidr" {
  description = "Public Subnet 1 CIDR"

}

variable "public-subnet-2-cidr" {
  description = "Public Subnet 2 CIDR"

}

variable "private-subnet-1-cidr" {
  description = "Private Subnet 1 CIDR"

}

variable "private-subnet-2-cidr" {
  description = "Private Subnet 2 CIDR"
}

variable "public-subnet-1" {
  description = "public subnet 1"

}

variable "public-subnet-2" {
  description = "public subnet 2"

}

variable "private-subnet-1" {
  description = "private subnet 1"
}

variable "private-subnet-2" {
  description = "private subnet 2"

}

variable "internet-gateway" {
  description = "Internet Gateway Name"

}

variable "public-route-table-name" {
  description = "Public Route Table"
}

variable "private-route-table" {
  description = "Private Route Table"
}

variable "availability_zone-1" {}
variable "availability_zone-2" {}
variable "nat_gateway" {}
variable "key_pair" {}
variable "alb_security_group" {}
variable "ec2_security_group" {}
variable "cidr_open_from_internet" {}
variable "port_80" {}
variable "port_443" {}
variable "protocol_tcp" {}
variable "load_balancer_name" {}
variable "asg_name" {}
variable "launch_template_name" {}
variable "image_id" {}
variable "instance_type" {}
variable "region" {}

