data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
 
  owners = ["099720109477"]   # Canonical
}


# Create a VPC
resource "aws_vpc" "test_resource" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = var.instance_name
  }
}

resource "aws_subnet" "test_resource" {
  vpc_id            = aws_vpc.test_resource.id
  cidr_block        = var.subnet_cidr_block
  availability_zone = var.availability_zone

  tags = {
    Name = var.instance_name
  }
}

resource "aws_instance" "test_resource" {
  ami                  = data.aws_ami.ubuntu.id
  instance_type        = var.instance_type

  tags = {
    Name = var.instance_name
    test = var.test
  }
}
