variable "name" {
  type = string
}
variable "location" {
  type = string
}
variable "rg_name" {
  type = string
}
variable "tags" {
  type = map(string)
  default = {}
}
variable "bandwidth" {
  type = number
  default = 1000
}
variable "provider_name" {
  type = string
}
variable "peering_location" {
  type = string
}
variable "sku" {
  type = map(string)
}