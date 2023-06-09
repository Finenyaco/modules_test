resource "aws_rds_cluster" "example" {
  cluster_identifier      = var.cluster_name
  engine                  = var.engine
  engine_version          = var.engine_version
  engine_mode             = var.engine_mode
  availability_zones      = [var.availability_zone1, var.availability_zone2]
  database_name           = var.database_name
  master_username         = var.username
  master_password         = var.password
  backup_retention_period = 5
  preferred_backup_window = "07:00-09:00"
  skip_final_snapshot     = false

    serverlessv2_scaling_configuration {
    max_capacity = 1.0
    min_capacity = 0.5
  }
}


resource "aws_rds_cluster_instance" "example" {
  cluster_identifier = aws_rds_cluster.example.id
  instance_class     = "db.serverless"
  engine             = aws_rds_cluster.example.engine
  engine_version     = aws_rds_cluster.example.engine_version
}