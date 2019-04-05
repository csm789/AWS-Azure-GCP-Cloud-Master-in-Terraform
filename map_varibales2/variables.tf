variable "priya" {}
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
