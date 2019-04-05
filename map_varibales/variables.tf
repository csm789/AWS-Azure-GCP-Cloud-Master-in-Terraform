variable "bastion_amis" {
  type = "map"
  default = {
    us-east-1 = "ami-0565af6e282977273"
    us-east-2 = "ami-0cd3dfa4e37921605"
  }
}
variable "env" {}
variable "region" {
default = "us-east-2"
}
variable "instance_type" {
type = "map"
default {
  dev= "t2.micro"
  puppet= "t2.medium"
}
}
