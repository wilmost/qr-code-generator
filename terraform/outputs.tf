output "eks_cluster_id" {
  description = "ID of the cluster"
  value       = aws_eks_cluster.eks.id
}

output "eks_cluster_endpoint" {
  description = "Endpoint  EKS Kubernetes API"
  value       = aws_eks_cluster.eks.endpoint
}

output "eks_cluster_arn" {
  description = " ARN  EKS cluster"
  value       = aws_eks_cluster.eks.arn
}

output "eks_cluster_version" {
  description = "Kubernetes version of the EKS cluster"
  value       = aws_eks_cluster.eks.version
}

output "eks_node_group_arn" {
  description = "ARN EKS node group"
  value       = aws_eks_node_group.eks_nodes.arn
}

output "eks_node_group_status" {
  description = " status EKS node group"
  value       = aws_eks_node_group.eks_nodes.status
}
