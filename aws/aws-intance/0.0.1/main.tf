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

resource "aws_network_interface" "test_resource" {
  subnet_id   = aws_subnet.test_resource.id
  private_ips = var.network_interface_ip

  tags = {
    Name = var.instance_name
  }
}

resource "aws_instance" "test_resource" {
  ami                  = data.aws_ami.ubuntu.id
  instance_type        = var.instance_type
  network_interface {
    network_interface_id = aws_network_interface.test_resource.id
    device_index         = 0
  }

  tags = {
    Name = var.instance_name
  }
}

resource "aws_internet_gateway" "test_gw" {
  vpc_id = aws_vpc.test_resource.id

  tags = {
    Name = var.instance_name
  }
}

resource "aws_lb" "test" {
  name               = var.instance_name
  internal           = false
  load_balancer_type = "network"
  subnets            = [aws_subnet.test_resource.id]

  tags = {
    Environment = "test"
  }
}


resource "aws_eip" "ec2_instance" {
  instance = aws_instance.test_resource.id
  domain   = "vpc"
  depends_on = [aws_internet_gateway.test_gw]
}