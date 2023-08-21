resource "aws_main_route_table_association" "tfer--vpc-07b4b2ef54317520d" {
  route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-05c6e1aa710b5657d_id}"
  vpc_id         = "vpc-07b4b2ef54317520d"
}

resource "aws_main_route_table_association" "tfer--vpc-0e13893bba99525f9" {
  route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-09c0b119f3f6153d1_id}"
  vpc_id         = "vpc-0e13893bba99525f9"
}
