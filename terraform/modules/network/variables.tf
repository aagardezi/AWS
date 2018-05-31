variable "vpc_id" {
  description = "The id of the vpc to run the network creation for"
}

variable "workspace_subnets" {
  description = "The ip rages for the subnets"
  default = []
}

variable "azs" {
  description = "The availability zones to use"
  default = ["eu-west-2a","eu-west-2b"]
}

variable "tags" {
  type = "map"
}



