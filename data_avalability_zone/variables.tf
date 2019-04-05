variable "ami_type" {
default={
type="map"
us-east-1="ami-011b3ccf1bd6db744"
us-east-2="ami-922914f7"
}
}

variable "env" {}
variable "region" {}
variable "instance_type" {

type="map"
default={
 dev = "t2.micro"
 sys = "t2.medium"
}
}

variable "security_group_ids" {
type = "list"
description = "AWS_Availability_zone_SG"
default = ["sg-966d09f8","sg-966d09f8","sg-0451d3b89ee942bdc"]
}
