# Creating first instance - CODE
# Below is the code you can use to create ec2 instance shown in the first demo. Please note that you will be prompted to choose region.
# VERY IMPORTANT : Please choose us-east-2 as region. AMIid is specific to region and the one mentioned in demo is specific to us-east-2

resource "aws_instance" "Sample_instance" {
  ami           = "ami-922914f7"
  instance_type = "t2.micro"

  tags {
    Name = "demoinstance"
  }
}

/*
# Configure the AWS Provider
provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "us-east-1"
}

# Create a web server
resource "aws_instance" "web" {
  # ...
}
*/
