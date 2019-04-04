Inline variables - CODE
You need three files - variables.tf , main.tf and provider.tf. Please create those and add below contents
NOTE : You should run the command :    terraform apply -var amitype='ami-922914f7'

variables.tf contents:
variable "amitype" {
}

provider.tf contents : -- NOTE : replace with your credentials
provider "aws" {
  access_key = "AGHKJHLKJHLH23"
  secret_key = "DJLDDGGHH"
  region     = "us-east-2"
}

main.tf contents :
resource "aws_instance" "firstdemo" {
ami = "${var.amitype}"
instance_type = "t2.micro"
tags {
Name = "demoinstance"
}
}
