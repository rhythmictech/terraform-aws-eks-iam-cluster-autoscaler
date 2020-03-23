output "iam_role_cluster_autoscaler_arn" {
  value = aws_iam_role.cluster_autoscaler.arn
}

output "iam_role_cluster_autoscaler_name" {
  value = aws_iam_role.cluster_autoscaler.name
}
