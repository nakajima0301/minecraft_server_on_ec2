# -----------------------------------
# VPC
# -----------------------------------
resource "aws_vpc" "vpc" {
  cidr_block = var.root_segment

  tags = {
    Name = var.app_name
  }
}

# -----------------------------------
# IGW
# -----------------------------------
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "${var.app_name}_igw"
  }
}

# -----------------------------------
# Subnet
# -----------------------------------
resource "aws_subnet" "public_subnet_a" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.public_segment_a
  availability_zone = var.public_segment_a_az

  tags = {
    Name = "${var.app_name}_public_subnet_a"
  }
}

# -----------------------------------
# RT
# -----------------------------------
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "${var.app_name}_public_rt"
  }
}

resource "aws_route_table_association" "public_rt_asoc" {
  subnet_id = aws_subnet.public_subnet_a.id
  route_table_id = aws_route_table.public_rt.id
}