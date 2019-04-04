variable "amitype" {
default = "ami-922914f7"
}

variable "env" {}

variable "region" {
  default = "us-east-2"
}
varible "instance_type" {
  type = "map"
  default = {
    dev = "t2.micro"
    puppet= "t2.medium"
  }
}
