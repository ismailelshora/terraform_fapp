resource "aws_eip" "nat_ip" {
  
}

resource "aws_nat_gateway" "natgw" {
  allocation_id = aws_eip.nat_ip.id
  subnet_id     = aws_subnet.pub1.id

  tags = {
    Name = "natgw"
  }
}