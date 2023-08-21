resource "aws_route_table_association" "test-route-association-pub-sub1" {
  route_table_id = aws_route_table.test-route-table-pub-sub1.id
  subnet_id      = aws_subnet.test-public-subnet1.id
}

resource "aws_route_table_association" "test-route-association-pub-sub3" {
  route_table_id = aws_route_table.test-route-table-pub-sub3.id
  subnet_id      = aws_subnet.test-public-subnet3.id
}

resource "aws_route_table_association" "test-rta-eks-pods-a" {
  route_table_id = aws_route_table.test-rt-eks-pods-a.id
  subnet_id      = aws_subnet.test-public-subnet-eks-pods-a.id
}

resource "aws_route_table_association" "test-rta-eks-pods-c" {
  route_table_id = aws_route_table.test-rt-eks-pods-c.id
  subnet_id      = aws_subnet.test-public-subnet-eks-pods-c.id
}