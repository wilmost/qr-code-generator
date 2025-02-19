

locals {
  region           = "us-east-1"
  cluster_name    = "alpha-cluster-eks"
  node_group_name = "alpha-cluster-ng"
  instance_type   = "t3.medium"
  desired_size    = 2
  max_size        = 3
  min_size        = 1
  subnet_ids      = ["subnet-0322734cd84d8a529","subnet-02caa4d274cf32d2b"]
}
