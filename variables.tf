variable "prefix" {
  description = "A prefix used for all resources in this example"
  default = "grupo5"
}

variable "location" {
  description = "The Azure Region in which all resources in this example should be provisioned"
  default = "West Europe"
}

variable "kubernetes_client_id" {
  description = "The Client ID for the Service Principal to use for this Managed Kubernetes Cluster"
  default = "xxx-2526-4422-90db-xxx"
}

variable "kubernetes_client_secret" {
  description = "The Client Secret for the Service Principal to use for this Managed Kubernetes Cluster"
  default = "54c46dfc-4da3-4f56-bf0b-xxxxxx"
}

variable "azure_subscription_id" {
  description = "The azure subscription"
  default = ""
}

variable "azure_tenenat_tenant_id" {
  description = "The azure Tenant"
  default = ""
}
