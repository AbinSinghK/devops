provider "aws" {
  region = "ap-south-1" # Change to your desired AWS region
}

resource "aws_instance" "abins_instance" {
  ami           = "ami-067c21fb1979f0b27" # Specify your desired AMI ID
  instance_type = "t2.micro"              # Specify your desired instance type
  key_name      = "mumbai"    # Specify your key pair name

  subnet_id     = "subnet-xxxxxxxxxxxxxx" # Specify your desired subnet ID

  security_groups = ["all"] # Specify your security group(s) by name
}

output "instance_public_ip" {
  value = aws_instance.abins_instance.public_ip
}
