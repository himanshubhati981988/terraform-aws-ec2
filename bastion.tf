resource "aws_instance" "bastion" {
    ami = "ami-af455dc9"
    instance_type = "${var.INSTANCE_TYPE}"
    subnet_id = "${aws_subnet.public_a.id}"
    vpc_security_group_ids = ["${aws_security_group.allow_ssh.id}"]
    key_name = "${var.BASTION_KEY_NAME}"
    associate_public_ip_address = true
    tags {
        Name = "${var.ENVIRONMENT}_BASTION"
    }


}
