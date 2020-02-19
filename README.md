# terraform-aws-eks-iam-cluster-autoscaler
[![](https://github.com/rhythmictech/terraform-aws-eks-iam-cluster-autoscaler/workflows/check/badge.svg)](https://github.com/rhythmictech/terraform-aws-eks-iam-cluster-autoscaler/actions)

Configure IAM role and related policies to use EKS Service Accounts with the external-dns service.

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
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| cluster\_name |  | string | n/a | yes |
| issuer\_url | OIDC issuer URL \(include prefix\) | string | n/a | yes |
| kubernetes\_namespace | Namespace to operate in \(service accounts and pods must be in the same namespace\) | string | `"default"` | no |
| service\_account | Name of service account to create \(computed based on cluster name if not specified\) | string | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| iam\_role\_external\_dns\_arn |  |
| service\_account |  |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->