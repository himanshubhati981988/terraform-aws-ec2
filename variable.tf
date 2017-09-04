variable "INSTANCE_TYPE" {
  description = "AWS instance type"
  default = "t2.large"
}

variable "AWS_REGION" {
  description = "AWS Region for this system"
  default = "eu-west-1"
}

variable "VPC_CIDR" {
  description = "CIDR for VPC"
  default = "10.100.0.0/16"
}

variable "SUBNET1_CIDR" {
  description = "CIDR for VPC"
  default = "10.100.1.0/24"
}


variable "SUBNET2_CIDR" {
  description = "CIDR for VPC"
  default = "10.100.2.0/24"
}


variable "ENVIRONMENT" {
  description = "Environment name"
  default = "ubqd"
}

variable "BASTION_KEY_NAME" {
  description = "AWS key name"
  default = "newbastionpoc"
}

variable "BASTION_PRIVATE_KEY_PATH" {
  description = "path to key "
  default = "/home/himanshu/Downloads/newbastionpoc.pem"
}

variable "WEB_KEY_NAME" {
  description = "AWS key name"
  default = "newwebpoc"
}

variable "WEB_PRIVATE_KEY_PATH" {
  description = "path to key "
  default = "/home/himanshu/Downloads/newwebpoc.pem"
}
