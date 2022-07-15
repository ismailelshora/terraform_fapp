data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}


// basion Ec2
resource "aws_instance" "bastionhost" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  associate_public_ip_address = true
  subnet_id = aws_subnet.pub1.id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]


  tags = {
    Name = "bastionhost"
  }
}


resource "tls_private_key" "mykey" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated_key" {
  key_name   = "testkey"
  public_key = tls_private_key.mykey.public_key_openssh
}

//  Ec2
resource "aws_instance" "ec2host" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  subnet_id = aws_subnet.prv1.id
  vpc_security_group_ids = [aws_security_group.allow_ssh3000.id]
  key_name = aws_key_pair.generated_key.key_name

  
  tags = {
    Name = "ec2host"
  }
}