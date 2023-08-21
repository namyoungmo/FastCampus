resource "aws_route_table_association" "tfer--subnet-0146d2bc968d784ed" {
  route_table_id = aws_route_table.tfer--rtb-07d0239087a40df59.id
  subnet_id      = "subnet-0146d2bc968d784ed"
}

resource "aws_route_table_association" "tfer--subnet-059c9b1ab9953c6cf" {
  route_table_id = aws_route_table.tfer--rtb-021049c380c95edcf.id
  subnet_id      = "subnet-059c9b1ab9953c6cf"
}
