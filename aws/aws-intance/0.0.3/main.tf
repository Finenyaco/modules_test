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
  private_ips = [var.private_ip]

  tags = {
    Name = "test_resource"
  }
}

resource "aws_instance" "test_resource" {
  ami                  = "ami-0bcea984e985f96ac"
  instance_type        = var.instance_type
  iam_instance_profile = "AmazonSSMRoleForInstancesQuickSetup"
  network_interface {
    network_interface_id = aws_network_interface.test_resource.id
    device_index         = 0
  }
  tags = {
    Name = var.instance_name
    test = var.test
  }
}
