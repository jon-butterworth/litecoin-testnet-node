provider "aws" {}

resource "aws_instance" "doge_node" {
  ami           = "${lookup(local.config["amis"], local.config["region"])}"
  instance_type = "t2.micro"
  user_data     = file("${path.module}/user_data.sh")
}