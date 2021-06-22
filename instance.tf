resource "aws_instance" "kroton" {
  ami               = "ami-0ee02acd56a52998e"
  instance_type     = "t2.micro"
  security_groups   = ["${aws_security_group.kroton-ssh-http.name}"]
  key_name = "parkroton"
  user_data = file("scripts/first-boot.sh")
  tags = {
        Name = "webserverkroton"
  }

}
