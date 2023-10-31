# varialbes file for example.tf


variable "resource_group_name" {
  type = string
  default = "akv-secret-rg-example"
}


variable "location" {
  type = string
  default = "southeastasia"
}