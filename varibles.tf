variable "client_id" {
    type = string
    description = "Enetr the Client_id of the Managing Subscription"
}

variable "client_secret" {
  type = string
  description = "Enter the client_secret of the Managing Subscription"
}

variable "tenant_id" {
  type = string
  description = "Enter the tenant_id of the Managing Subscription"
}

variable "subscription_id" {
  type = string
  description = "Enter the subscription_id of the Managing subscription"
}
variable "rg_name" {
    type = string
    description = "Enter the resource group name,ex-rg-sungard-prod-001"
}
variable "rg_location" {
    type = string
    description = "Enter the region of the resource Group,ex-East US"
}
variable "storage_name" {
    type = string
    description = "Enter the name of the storage account that must be globally unique"
}
variable "zca_vmname" {
    type = string
    description = "Enter the virtual machine name,ex-sungard-zca-vm-001 "
}
variable "admin_username" {
    type = string
    description = "Enter the name of the admin user"
}
variable "admin_password" {
  type = string
  description = "Enter the password of the admin user"
}
variable "virtual_network_name" {
    type = string
    description = "Enter the name of the Virtual Network"
}
variable "vnet_address_space" {
    type = list(any)
    description = "Enter the CIDR block for the vnet"
}
variable "subnet1_name" {
    type = string
    description = "Enter the name of the subnet1"
}
variable "subnet2_name" {
    type = string
    description = "Enter the name of the subnet2"
}
variable "subnet1_adress_prefix" {
    type = list(any)
    description = "Enter the CIDR block for the subnet1"
}
variable "subnet2_adress_prefix" {
    type = list(any)
    description = "Enter the CIDR block for the subnet2"
}
variable "nsg_name" {
    type = string
    description = "Enter the name of the Network Security group"
}
variable "nic_name" {
    type = string
    description = "Enter the name of the network interface"
}
variable "ip_config_name" {
    type = string
    description = "Enter the name of the Ip_config_name"
}
variable "vm_size" {
  type = string
  description = "Enter the size of the VM"
}
variable "tags" {
  type = map(string)
  description = "Enter the tag for differnet cutsomer"
}
