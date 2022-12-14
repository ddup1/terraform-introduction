data "aws_ami" "amazonlinux2" {
  owners      = ["amazon"]
  most_recent = true
  filter {
    name   = "name"
    values = ["amzn2-*"]
  }
}

resource "aws_instance" "this" {

}
