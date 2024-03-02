variable "amis" {
  type = map(string)
  default = {
    us-east-1 = "ami-07d9b9ddc6cd8dd30"
    us-east-2 = "ami-02ca28e7c7b8f8be1"
  }
}

variable "cdirs" {
  type    = list(string)
  default = ["45.191.135.118/32"]
}

variable "instance_type" {
  default = "t2.micro"
}
