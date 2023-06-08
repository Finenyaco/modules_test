variable "availability_zone" {
  description = "The AZ where the EBS volume will exist"
  default     = "ap-east-1a"
}

variable "ebs_size" {
  description = "The size of the drive in GiBs."
  default     = 1
}


resource "aws_ebs_volume" "example" {
  availability_zone = var.availability_zone
  size              = var.ebs_size

  tags = {
    Name = "test_aws"
  }
}

resource "aws_ebs_snapshot" "example_snapshot" {
  volume_id = aws_ebs_volume.example.id

  tags = {
    Name = "test_aws_snapshot"
  }
}