
data "aws_eks_addon_version" "vpc_cni" {
  addon_name         = "vpc-cni"
  kubernetes_version = local.kubernetes_version

} 

data "aws_eks_addon_version" "coredns" {
  addon_name         = "coredns"
  kubernetes_version = local.kubernetes_version

} 

data "aws_eks_addon_version" "kube_proxy" {
  addon_name         = "kube-proxy"
  kubernetes_version = local.kubernetes_version

} 

data "aws_eks_addon_version" "aws_ebs_csi" {
  addon_name         = "aws-ebs-csi-driver"
  kubernetes_version = local.kubernetes_version
  
}

locals {
  region           = "us-east-1"
  cluster_name    = "alpha-cluster-eks"
  kubernetes_version = "1.31"
  node_group_name = "alpha-cluster-ng"
  instance_type   = "t3.medium"
  desired_size    = 2
  max_size        = 3
  min_size        = 1
  subnet_ids      = ["subnet-0322734cd84d8a529","subnet-02caa4d274cf32d2b"] 
  
}
 

