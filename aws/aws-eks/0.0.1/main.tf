data "aws_iam_policy_document" "assume_role" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["eks.amazonaws.com"]
    }

    actions = ["sts:AssumeRole"]
  }
}

resource "aws_iam_role" "example" {
  name               = "eks-cluster-example"
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}

resource "aws_iam_role_policy_attachment" "example-AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = aws_iam_role.example.name
}

# Optionally, enable Security Groups for Pods
# Reference: https://docs.aws.amazon.com/eks/latest/userguide/security-groups-for-pods.html
resource "aws_iam_role_policy_attachment" "example-AmazonEKSVPCResourceController" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"
  role       = aws_iam_role.example.name
}


# Create a VPC
resource "aws_vpc" "test_resource" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = var.instance_name
  }
}

resource "aws_subnet" "test_resource1" {
  vpc_id            = aws_vpc.test_resource.id
  cidr_block        = var.subnet_cidr_block1
  availability_zone = var.availability_zone1

  tags = {
    Name = var.instance_name
  }
}

resource "aws_subnet" "test_resource2" {
  vpc_id            = aws_vpc.test_resource.id
  cidr_block        = var.subnet_cidr_block2
  availability_zone = var.availability_zone2

  tags = {
    Name = var.instance_name
  }
}

resource "aws_network_interface" "test_resource" {
  subnet_id   = aws_subnet.test_resource1.id
  private_ips = var.network_interface_ip

  tags = {
    Name = var.instance_name
  }
}

resource "aws_eks_cluster" "example" {
  name     = "example"
  role_arn = aws_iam_role.example.arn

  vpc_config {
    subnet_ids = [aws_subnet.test_resource1.id, aws_subnet.test_resource2.id]
  }

  # Ensure that IAM Role permissions are created before and deleted after EKS Cluster handling.
  # Otherwise, EKS will not be able to properly delete EKS managed EC2 infrastructure such as Security Groups.
  depends_on = [
    aws_iam_role_policy_attachment.example-AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.example-AmazonEKSVPCResourceController,
    aws_vpc.test_resource,
    aws_subnet.test_resource1,
    aws_subnet.test_resource2,
  ]
}

output "endpoint" {
  value = aws_eks_cluster.example.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.example.certificate_authority[0].data
}

