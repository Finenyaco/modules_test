# Create a VPC
resource "aws_vpc" "test_resource" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "test_resource"
  }
}

resource "aws_subnet" "test_resource" {
  vpc_id            = aws_vpc.test_resource.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "ap-east-1a"

  tags = {
    Name = "test_resource"
  }
}

resource "aws_network_interface" "test_resource" {
  subnet_id   = aws_subnet.test_resource.id
  private_ips = ["172.16.10.100"]

  tags = {
    Name = "test_resource"
  }
}

resource "aws_instance" "test_resource" {
  ami                  = "ami-0e0820ad173f20fbb"
  instance_type        = "t3.micro"
  iam_instance_profile = "AmazonSSMRoleForInstancesQuickSetup"
  network_interface {
    network_interface_id = aws_network_interface.test_resource.id
    device_index         = 0
  }

  tags = {
    Name = "test_resource"
  }
}