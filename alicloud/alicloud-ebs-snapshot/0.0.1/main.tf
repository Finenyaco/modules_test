resource "aws_ebs_volume" "example" {
  availability_zone = "ap-east-1"
  size              = 1

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