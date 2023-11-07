variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
}

variable "public_subnet1" {
    type = string
    default  = "10.0.1.0/24"
}

variable "public_subnet2" {
    type = string
    default  = "10.0.2.0/24"
}

variable "private_subnet1" {
    type = string
    default  = "10.0.3.0/24"
}

variable "private_subnet2" {
    type = string
    default  = "10.0.4.0/24"
}

variable "availability_zones" {
    type = list(string)
    default = [ "us-west-1b", "us-west-1c" ]
}