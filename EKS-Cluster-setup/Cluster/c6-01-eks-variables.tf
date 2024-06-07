# Cluster Name
variable "cluster_name" {
  description = "EKS Cluster Name"
  type = string
  default = "eksdemo"
}

variable "cluster_service_ipv4_cidr" {
  description = "CIDR for EKS cluster"
  type = string
  default = null
}

variable "cluster_version" {
  description = "Cluster minor version"
  type = string
  default = null
}

variable "cluster_endpoint_private_access" {
  description = "Indicates whether or not Amazon EKS private api endpoint is accessible or not"
  type = bool
  default = false
}

variable "cluster_endpoint_public_access" {
  description = "Indicates whether Amazon EKS public api endpoint is accessible or not. If this is set to 'false' then ensure private endpoint is set to 'true'"
  type = bool
  default = true
}

variable "cluster_endpoint_public_access_CIDR" {
  description = "What all CIDRs can access public API server endpoint"
  type = list(string)
  default = ["0.0.0.0./0"]
}

