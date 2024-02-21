terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "application_vm" {
  ami           = "ami-02d0a1cbe2c3e5ae4"  
  instance_type = "t3.micro"     

  tags = {
    Name = "Application VM"
  }
   
  key_name = "Magesh"  # Replace with your key pair name
}

resource "aws_db_instance" "my_database" {
  identifier           = "mydatabase"
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  name                 = "petclinic"
  username             = "petclinic"
  password             = "petclinic"
  parameter_group_name = "default.mysql5.7"
  
  tags = {
    Name = "MyDatabase"
  }
}
