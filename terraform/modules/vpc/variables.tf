variable "cidr_block" {}
variable "tags" {
  description = "Tags for resources"
  type        = map(string)
}
