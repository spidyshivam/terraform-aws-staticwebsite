variable "region" {
  default = "ap-south-1"
}
variable "zone1" {
  default = "ap-south-1a"
}
variable "webuser" {
  default = "ubuntu"
}
variable "amiID" {
  type = map(any)
  default = {
    ap-south-1 = "ami-00bb6a80f01f03502"
    ap-south-2 = "ami-0a94a70b8a1454a4b"
  }
}
