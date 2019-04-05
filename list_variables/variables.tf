/* List variables - CODE
You need three files - variables.tf , main.tf and provider.tf. Please create those and add below contents
NOTE :You need to replace security group entries with the ones that exist in your account
*/
variable "env1" {}
variable "ami_type" {
type = "map"
default = {
 us-east-1 = "ami-0565af6e282977273"
 us-east-2 = "ami-922914f7"
}
}
variable "env2" {}
variable "region" {}
variable "instance_type" {
 type = "map"
 default = {
  dev = "t2.micro"
  sys = "t2.medium"
}
}
variable "list" {}
variable "sgs" {
 type = "list"
 default = [ "sg-1b015a5c", "sg-966d09f8"]
}
