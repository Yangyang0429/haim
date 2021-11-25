resource "aws_key_pair" "yang123_key" {
    key_name = "yang123-key"
    public_key = file("../../.ssh/id_rsa.pub")

}