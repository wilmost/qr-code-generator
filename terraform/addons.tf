resource "aws_eks_addon" "vpc_cni" {
  cluster_name  = aws_eks_cluster.eks.name
  addon_name    = data.aws_eks_addon_version.vpc_cni.addon_name
  addon_version = data.aws_eks_addon_version.vpc_cni.version 
}

resource "aws_eks_addon" "coredns" {
  cluster_name  = aws_eks_cluster.eks.name
  addon_name    = data.aws_eks_addon_version.coredns.addon_name
  addon_version = data.aws_eks_addon_version.coredns.version 
}

resource "aws_eks_addon" "kube_proxy" {
  cluster_name  = aws_eks_cluster.eks.name
  addon_name    = data.aws_eks_addon_version.kube_proxy.addon_name
  addon_version = data.aws_eks_addon_version.kube_proxy.version
}

resource "aws_eks_addon" "aws_ebs_csi" {
  cluster_name  = aws_eks_cluster.eks.name
  addon_name    = data.aws_eks_addon_version.aws_ebs_csi.addon_name
  addon_version = data.aws_eks_addon_version.aws_ebs_csi.version
}