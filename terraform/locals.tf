locals {
  region           = "us-west-2"
  cluster_name    = "alpha-cluster-eks"
  node_group_name = "alpha-cluster-ng"
  instance_type   = "t3.medium"
  desired_size    = 2
  max_size        = 3
  min_size        = 1
  subnet_ids      = ["subnet-a", "subnet-b"]
}
