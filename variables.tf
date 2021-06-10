variable "cluster_name" {
  description = "Name of EKS cluster (must match)"
  type        = string
}

variable "issuer_url" {
  description = "OIDC issuer URL (include prefix)"
  type        = string
}

variable "kubernetes_namespace" {
  default     = "kube-system"
  description = "Namespace to operate in (service accounts and pods must be in the same namespace)"
  type        = string
}

variable "service_account" {
  default     = ""
  description = "Name of service account to create"
  type        = string
}

variable "tags" {
  default     = {}
  description = "Tags to add to supported resources"
  type        = map(string)
}
