variable "ami_type" {
type = "map"
default = {
 us-east-1 = "ami-0565af6e282977273"
 us-east-2 = "ami-922914f7"
}
}
variable "env" {}
variable "region" {}
variable "instance_type" {
 type = "map"
 default = {
  dev = "t2.micro"
  sys = "t2.medium"
}
}
variable "AWS_SG_ohio_ALLINONE" {
 type = "list"
 default = [ "sg-966d09f8", "sg-0451d3b89ee942bdc"]
}
