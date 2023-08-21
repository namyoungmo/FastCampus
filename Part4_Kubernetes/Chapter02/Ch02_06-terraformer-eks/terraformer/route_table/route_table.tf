resource "aws_route_table" "tfer--rtb-021049c380c95edcf" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0fbd9486dfce7e3d2"
  }

  tags = {
    Name = "public-subnet1-routing"
  }

  tags_all = {
    Name = "public-subnet1-routing"
  }

  vpc_id = "vpc-0e13893bba99525f9"
}

resource "aws_route_table" "tfer--rtb-05c6e1aa710b5657d" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0fbd9486dfce7e3d2"
  }

  vpc_id = "vpc-07b4b2ef54317520d"
}

resource "aws_route_table" "tfer--rtb-07d0239087a40df59" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0fbd9486dfce7e3d2"
  }

  tags = {
    Name = "public_subnet3-routing"
  }

  tags_all = {
    Name = "public_subnet3-routing"
  }

  vpc_id = "vpc-0e13893bba99525f9"
}

resource "aws_route_table" "tfer--rtb-09c0b119f3f6153d1" {
  vpc_id = "vpc-0e13893bba99525f9"
}
