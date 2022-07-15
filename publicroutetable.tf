resource "aws_route_table" "publicroute" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

 

  tags = {
    Name = "publicroute"
  }
}

resource "aws_route_table_association" "pub_assocition1" {
  subnet_id      = aws_subnet.pub1.id
  route_table_id = aws_route_table.publicroute.id
}
resource "aws_route_table_association" "pub_assocition2" {
  subnet_id      = aws_subnet.pub2.id
  route_table_id = aws_route_table.publicroute.id
}