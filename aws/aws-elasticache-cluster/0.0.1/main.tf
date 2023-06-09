variable "engine" {
    type        = string
    description = "(Optional, Required if replication_group_id is not specified) Name of the cache engine to be used for this cache cluster. Valid values are memcached or redis"
    default = "redis"
}

variable "node_ytpe" {
    type        = string
    default = "cache.t3.micro"
}

variable "cluster_id" {
    type        = string
    default = "mycluster"
}

resource "aws_elasticache_cluster" "test" {
  cluster_id        = var.cluster_id
  engine            = var.engine
  node_type         = var.node_ytpe
  num_cache_nodes   = 1
  port              = 6379
  apply_immediately = true
}