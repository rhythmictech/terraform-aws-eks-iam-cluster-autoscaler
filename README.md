# terraform-aws-eks-iam-cluster-autoscaler
[![](https://github.com/rhythmictech/terraform-aws-eks-iam-cluster-autoscaler/workflows/check/badge.svg)](https://github.com/rhythmictech/terraform-aws-eks-iam-cluster-autoscaler/actions)

Configure IAM role and related policies to use the EKS cluster autoscaler

## Usage
```
module "cluster_autoscaler" {
  source               = "git::https://github.com/rhythmictech/terraform-aws-eks-iam-cluster-autoscaler"
  cluster_name         = module.eks.cluster_name
  issuer_url           = module.eks.cluster_issuer_url
  kubernetes_namespace = "kube-system"
}


```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.20 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.8 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.8 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.cluster_autoscaler](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.cluster_autoscaler](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.cluster_autoscaler](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.cluster_autoscaler](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.oidc_assume](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Name of EKS cluster (must match) | `string` | n/a | yes |
| <a name="input_issuer_url"></a> [issuer\_url](#input\_issuer\_url) | OIDC issuer URL (include prefix) | `string` | n/a | yes |
| <a name="input_kubernetes_namespace"></a> [kubernetes\_namespace](#input\_kubernetes\_namespace) | Namespace to operate in (service accounts and pods must be in the same namespace) | `string` | `"kube-system"` | no |
| <a name="input_service_account"></a> [service\_account](#input\_service\_account) | Name of service account to create | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to add to supported resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_iam_role_cluster_autoscaler_arn"></a> [iam\_role\_cluster\_autoscaler\_arn](#output\_iam\_role\_cluster\_autoscaler\_arn) | IAM role ARN |
| <a name="output_iam_role_cluster_autoscaler_name"></a> [iam\_role\_cluster\_autoscaler\_name](#output\_iam\_role\_cluster\_autoscaler\_name) | IAM role name |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
