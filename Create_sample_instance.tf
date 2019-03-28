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
  ====================================
  These are the four ways to Password Credentials
  1) Creating IAM user and password through provider.tf
  2) Creating IAM user and password through Environment variables
  3) Attach Admin roles to the user
  4) Storing it under ~/.aws/
}

# Create a web server
resource "aws_instance" "web" {
  # ...
}
*/
