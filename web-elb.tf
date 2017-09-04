resource "aws_elb" "elb_bastion" {
  name = "poc-bastion-elb"
  subnets         = ["${aws_subnet.public_a.id}"]


listener {
    instance_port = 80
    instance_protocol = "http"
    lb_port = 80
    lb_protocol = "http"
  }

#  listener {
#    instance_port = 443
#    instance_protocol = "https"
#    lb_port = 443
#    lb_protocol = "https"
#  }


  health_check {
    healthy_threshold = 2
    unhealthy_threshold = 2
    timeout = 3
    target = "HTTP:80/index.html"
    interval = 30
  }

  instances = ["${aws_instance.web01.id}","${aws_instance.web02.id}","${aws_instance.web03.id}"]
  security_groups = ["${aws_security_group.security_group_bastion_elb.id}"]

  cross_zone_load_balancing = true
  idle_timeout = 400
  connection_draining = true
  connection_draining_timeout = 400

  tags {
    Name = "${var.ENVIRONMENT}_ELB_SG"
  }
}

