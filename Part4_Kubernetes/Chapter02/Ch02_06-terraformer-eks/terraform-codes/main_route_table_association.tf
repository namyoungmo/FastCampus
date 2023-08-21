resource "aws_main_route_table_association" "tfer--vpc-0e13893bba99525f9" {
  route_table_id = aws_route_table.tfer--rtb-09c0b119f3f6153d1.id
  vpc_id         = "vpc-0e13893bba99525f9"
}
