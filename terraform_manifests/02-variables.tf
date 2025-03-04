
#azure location

variable "location" {
  default     = "centralindia"
  description = "The location/region where the AKS cluster should be created."
  type        = string
}

#azure resource group
variable "resource_group_name" {
  default     = "rg"
  description = "The name of the resource group in which to create the AKS cluster."
  type        = string
}
#azure aks environment
variable "aks_environment" {
  #default     = "dev"
  description = "The environment for the AKS cluster."
  type        = string
}

#SSH key for the AKS cluster
variable "ssh_public_key" {
    #default     = "C:\\Temp\\sshkey\\key.pub"
    description = "The SSH public key to use for the AKS cluster."
  }

#Windows admin username for the AKS worker nodes
variable "windows_admin_username" {
  description = "The Windows admin username for the AKS worker nodes."
  type        = string
  default     = "localadmin"
}

#Windows admin password for the AKS worker nodes
variable "windows_admin_password" {
  description = "The Windows admin password for the AKS worker nodes."
  type        = string
  default     = "Pr0range@12345"
}