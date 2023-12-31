/* 
 * Code to add ElastiCache subnet group, replication group, and cluster


resource "aws_elasticache_subnet_group" "elasticache_subnet" {
  name       = "fake-video-studio-cache-subnet"
  subnet_ids = aws_subnet.private_subnet.*.id
}

resource "aws_elasticache_replication_group" "rep_group" {
  automatic_failover_enabled    = true
  replication_group_id          = "fake-video-studio-rep-group"
  description                 = "example description"
  node_type                     = "cache.t3.micro"
  num_cache_clusters          =  2
  port                          = 6379
  subnet_group_name             = aws_elasticache_subnet_group.elasticache_subnet.name

  lifecycle {
    ignore_changes = [node_type]
  }
}


resource "aws_elasticache_cluster" "replica" {
  count                = 2
  cluster_id           = "fake-video-studio-rep-group-${count.index}"
  replication_group_id = aws_elasticache_replication_group.rep_group.id
  
}
 */