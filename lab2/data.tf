data "aws_vpc" "datalake" {
  filter {
    name   = "tag:Name"
    values = ["A Completer"]
  }
}

data "aws_subnets" "datalake" {
  filter {
    name   = "vpc-id"
    values = ["A completer"]
  }
}

data "aws_ami" "amazonlinux2" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
  filter {
    name   = "name"
    ### A compléter ###
  }
}
