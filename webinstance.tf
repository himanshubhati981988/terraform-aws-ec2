resource "aws_instance" "web01" {
    ami = "ami-af455dc9"
    instance_type = "${var.INSTANCE_TYPE}"
    subnet_id = "${aws_subnet.public_a.id}"
    vpc_security_group_ids = ["${aws_security_group.security_group_bastion.id}"]
    key_name = "${var.WEB_KEY_NAME}"
    associate_public_ip_address = false
    tags {
        Name = "${var.ENVIRONMENT}_WEB01"
    }

    root_block_device {
    volume_type           = "gp2"
    volume_size           = 15
    delete_on_termination = true

   }

}


resource "aws_instance" "web02" {
    ami = "ami-af455dc9"
    instance_type = "${var.INSTANCE_TYPE}"
    subnet_id = "${aws_subnet.public_a.id}"
    vpc_security_group_ids = ["${aws_security_group.security_group_bastion.id}"]
    key_name = "${var.WEB_KEY_NAME}"
    associate_public_ip_address = false
    tags {
        Name = "${var.ENVIRONMENT}_WEB02"
    }

    root_block_device {
    volume_type           = "gp2"
    volume_size           = 15
    delete_on_termination = true

   }

}

resource "aws_instance" "web03" {
    ami = "ami-af455dc9"
    instance_type = "${var.INSTANCE_TYPE}"
    subnet_id = "${aws_subnet.public_a.id}"
    vpc_security_group_ids = ["${aws_security_group.security_group_bastion.id}"]
    key_name = "${var.WEB_KEY_NAME}"
    associate_public_ip_address = false
    tags {
        Name = "${var.ENVIRONMENT}_WEB03"
    }

    root_block_device {
    volume_type           = "gp2"
    volume_size           = 15
    delete_on_termination = true

   }

}
