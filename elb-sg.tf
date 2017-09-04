resource "aws_security_group" "security_group_bastion_elb" {
  name = "elb_security_group"
  vpc_id = "${aws_vpc.myapp.id}"
  tags {
    Name = "${var.ENVIRONMENT}_ELB_SG"
  }
}

resource "aws_security_group_rule" "security_rule" {
  security_group_id = "${aws_security_group.security_group_bastion_elb.id}"
  type = "ingress"
  from_port = 80
  to_port = 80
  protocol = "tcp"
  cidr_blocks = [
    "0.0.0.0/0"
  ]
}


resource "aws_security_group_rule" "security_rule1" {
  security_group_id = "${aws_security_group.security_group_bastion_elb.id}"
  type = "ingress"
  from_port = 443
  to_port = 443
  protocol = "tcp"
  cidr_blocks = [
    "0.0.0.0/0"
  ]
}

resource "aws_security_group_rule" "security_rule2" {
  security_group_id = "${aws_security_group.security_group_bastion_elb.id}"
  type = "egress"
  from_port = 80
  to_port = 80
  protocol = "tcp"
  cidr_blocks = [
    "0.0.0.0/0"
  ]
}


resource "aws_security_group_rule" "security_rule3" {
  security_group_id = "${aws_security_group.security_group_bastion_elb.id}"
  type = "egress"
  from_port = 443
  to_port = 443
  protocol = "tcp"
  cidr_blocks = [
    "0.0.0.0/0"
  ]
}

