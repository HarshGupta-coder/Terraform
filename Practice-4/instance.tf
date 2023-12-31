resource "aws_key_pair" "newkey" {
  key_name   = "new-key"
  public_key = file(var.PUB_KEY)
}

resource "aws_instance" "new-web" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.new-pub-1.id
  key_name               = aws_key_pair.newkey.key_name
  vpc_security_group_ids = [aws_security_group.new_stack_sg.id]
  tags = {
    Name = "my-new-web-instance"
  }
}

resource "aws_ebs_volume" "vol_4_new" {
  availability_zone = var.ZONE1
  size              = 3
  tags = {
    Name = "extr-vol-4-new"
  }
}

resource "aws_volume_attachment" "atch_vol_new" {
  device_name = "/dev/xvdh"
  volume_id   = aws_ebs_volume.vol_4_new.id
  instance_id = aws_instance.new-web.id
}

output "PublicIP" {
  value = aws_instance.new-web.public_ip
}
