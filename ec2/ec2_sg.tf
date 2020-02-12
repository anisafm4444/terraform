

  resource "aws_security_group" "allow_ssh" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  ingress {
    # SSH (change to whatever ports you need)
    from_port   = "${var.ssh_from_port}"
    to_port     = "${var.ssh_to_port}"
    protocol    = "${var.protocol}"
    cidr_blocks = "${var.cidr_blocks}"
  }
  ingress {
    # http (Using Port)
    from_port = "${var.ingress_from_port}"
    to_port   = "${var.ingress_to_port}"
    protocol  = "${var.ingress_protocol}"
    cidr_blocks = "${var.ingress_cidr_blocks}"
  }

  egress {
    from_port       = "${var.egress_from_port}"
    to_port         = "${var.egress_to_port}"
    protocol        =  "${var.egress_protocol}"
    cidr_blocks     = "${var.egress_cidr_blocks}"
  }
}

