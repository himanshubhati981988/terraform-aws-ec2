resource "null_resource" "bastion" {
  connection {
    host = "${aws_instance.bastion.public_ip}"
    user = "ubuntu"
    timeout = "1m"
    private_key = "${file(var.BASTION_PRIVATE_KEY_PATH)}"
  }
provisioner "file" {
        source = "script/newbastionpoc.pem"
        destination = "/home/ubuntu/newbastionpoc.pem"
    }

}
