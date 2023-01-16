variable "vpc" {
  type = map(any)
  default = {
    "name" = "dogood"
    "cidr" = "192.168.0.0/20"
  }
}


variable "subnet_count" {
  type = number
  default = 3
}

variable "public_subnet1" {
  type = map
  default = {
    "name" = "public_subnet1"
    "cidr" = "192.168.0.0/28"
  }
}

