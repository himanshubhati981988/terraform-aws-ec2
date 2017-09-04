resource "aws_security_group" "security_group_bastion" {
  name = "bastion_security_group"
  vpc_id = "${aws_vpc.myapp.id}"
  tags {
    Name = "${var.ENVIRONMENT}_WEB_SG"
  }
}

resource "aws_security_group_rule" "security_rules" {
  security_group_id = "${aws_security_group.security_group_bastion.id}"
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  cidr_blocks = [
    "0.0.0.0/0"
  ]
}


resource "aws_security_group_rule" "security_rules1" {
  security_group_id = "${aws_security_group.security_group_bastion.id}"
  type = "ingress"
  from_port = 80
  to_port = 80
  protocol = "tcp"
  cidr_blocks = [
    "0.0.0.0/0"
  ]
}

resource "aws_security_group_rule" "security_rules2" {
  security_group_id = "${aws_security_group.security_group_bastion.id}"
  type = "ingress"
  from_port = 443
  to_port = 443
  protocol = "tcp"
  cidr_blocks = [
    "0.0.0.0/0"
  ]
}

resource "aws_security_group_rule" "security_rules3" {
  security_group_id = "${aws_security_group.security_group_bastion.id}"
  type = "egress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  cidr_blocks = [
    "0.0.0.0/0"
  ]

}
resource "aws_security_group_rule" "security_rules4" {
  security_group_id = "${aws_security_group.security_group_bastion.id}"
  type = "egress"
  from_port = 3306
  to_port = 3306
  protocol = "tcp"
  cidr_blocks = [
    "0.0.0.0/0"
  ]
}
resource "aws_security_group_rule" "security_rules5" {
  security_group_id = "${aws_security_group.security_group_bastion.id}"
  type = "egress"
  from_port = 0
  to_port = 0
  protocol = -1
  cidr_blocks = [
    "0.0.0.0/0"
  ]
}

