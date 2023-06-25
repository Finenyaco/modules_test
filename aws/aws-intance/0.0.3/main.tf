resource "aws_network_interface" "test_resource" {
  subnet_id   = "subnet-09a04f409272d8c2f"
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
