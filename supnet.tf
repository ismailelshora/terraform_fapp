resource "aws_subnet" "pub1" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.0.0/24"

  availability_zone = "us-east-2a"

 tags = {
    Name = "pub1"
  }

}

resource "aws_subnet" "pub2" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.1.0/24"

  availability_zone = "us-east-2b"

 tags = {
    Name = "pub2"
  }

}


resource "aws_subnet" "prv1" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.2.0/24"

  availability_zone = "us-east-2a"

 tags = {
    Name = "prv1"
  }

}

resource "aws_subnet" "prv2" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.3.0/24"

  availability_zone = "us-east-2a"

 tags = {
    Name = "prv2"
  }

}

resource "aws_subnet" "prv3" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.4.0/24"

  availability_zone = "us-east-2b"

 tags = {
    Name = "prv3"
  }

}

resource "aws_subnet" "prv4" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.5.0/24"

  availability_zone = "us-east-2b"

 tags = {
    Name = "prv4"
  }

}