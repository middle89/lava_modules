
resource "aws_vpc" "aws_vpc" {
  cidr_block = "${var.vpc_cidr}"
}

resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.aws_vpc.id}"
}