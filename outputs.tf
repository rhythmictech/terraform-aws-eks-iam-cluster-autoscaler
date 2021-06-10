output "iam_role_cluster_autoscaler_arn" {
  description = "IAM role ARN"
  value       = aws_iam_role.cluster_autoscaler.arn
}

output "iam_role_cluster_autoscaler_name" {
  description = "IAM role name"
  value       = aws_iam_role.cluster_autoscaler.name
}
