resource "aws_key_pair" "dove-key" {
  key_name   = "dove-key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDOamgvYRAHaYExo6NGVrcdYLlDJRvLbH3NgTRos+wyP shivam@joyboy"
}
