variable "azs" {
  description = "Region in which AWS Resources to be created"
  type = list(string)
  default = ["us-west-1b","us-west-1c"]
}