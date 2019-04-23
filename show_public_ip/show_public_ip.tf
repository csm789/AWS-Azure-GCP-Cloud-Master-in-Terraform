resource "ami_instance" "Create_Public_ip" {
ami = "ami-922914f7"
instance_type = "t2.micro"
tags {
Name   = "Show the output of the Public IP"
}
}

output {
  value = "${ami_instance.Create_public_ip.public_ip}"
}
