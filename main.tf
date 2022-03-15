resource "aws_vpc" "test-vpc" {
    cidr_block = local.cfg["network"]["cidr"]
  tags = {
      Name = "test-vpc-${terraform.workspace}"
  }
}