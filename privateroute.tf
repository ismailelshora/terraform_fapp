resource "aws_route_table" "privateroute" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.natgw.id
  }

 

  tags = {
    Name = "privateroute"
  }
}

resource "aws_route_table_association" "private_assocition1" {
  subnet_id      = aws_subnet.prv1.id
  route_table_id = aws_route_table.privateroute.id
}

resource "aws_route_table_association" "private_assocition2" {
  subnet_id      = aws_subnet.prv2.id
  route_table_id = aws_route_table.privateroute.id
}

resource "aws_route_table_association" "private_assocition3" {
  subnet_id      = aws_subnet.prv3.id
  route_table_id = aws_route_table.privateroute.id
}

resource "aws_route_table_association" "private_assocition4" {
  subnet_id      = aws_subnet.prv4.id
  route_table_id = aws_route_table.privateroute.id
}