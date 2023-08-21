resource "aws_route_table_association" "tfer--subnet-0146d2bc968d784ed" {
  route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-07d0239087a40df59_id}"
  subnet_id      = "subnet-0146d2bc968d784ed"
}

resource "aws_route_table_association" "tfer--subnet-059c9b1ab9953c6cf" {
  route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-021049c380c95edcf_id}"
  subnet_id      = "subnet-059c9b1ab9953c6cf"
}
