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
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| cluster\_name |  | string | n/a | yes |
| issuer\_url | OIDC issuer URL \(include prefix\) | string | n/a | yes |
| kubernetes\_namespace | Namespace to operate in \(service accounts and pods must be in the same namespace\) | string | `"kube-system"` | no |
| service\_account | Name of service account to create | string | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| iam\_role\_cluster\_autoscaler\_arn |  |
| iam\_role\_cluster\_autoscaler\_name |  |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
