variable "ec2-ami" {
  type = map(string)

  default = {
    sa-east-1 = "ami-0af6e9042ea5a4e3e"
  }
}

variable "cidr-remote-access" {
  type = list(string)

  default = ["0.0.0.0/0"]
}

variable "key-name" {
  default = "terraform-alura"
}