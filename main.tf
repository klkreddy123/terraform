resource "aws_instance" "web" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  subnet_id = "subnet-0d9f6e8c72fbba9e2"

  tags = {
    Name = "web"
  }
}