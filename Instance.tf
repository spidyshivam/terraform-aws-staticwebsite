resource "aws_instance" "web" {
  ami                    = var.amiID[var.region]
  instance_type          = "t2.micro"
  key_name               = "dove-key"
  vpc_security_group_ids = [aws_security_group.dove-sg.id]
  availability_zone      = var.zone1


  tags = {
    Name    = "Dove-Instance"
    Project = "Dove"
  }
  provisioner "file" {
    source      = "web.sh"
    destination = "/tmp/web.sh"
  }

  connection {
    type        = "ssh"
    user        = var.webuser
    private_key = file("dovekey")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/web.sh",
      "sudo /tmp/web.sh"
    ]
  }
}
output "instance_public_ip" {
  value = "You can access your website at http://${aws_instance.web.public_ip}"
}

resource "null_resource" "output_ip" {
  provisioner "local-exec" {
    command = "echo ${aws_instance.web.public_ip} > output.txt"
  }
}
