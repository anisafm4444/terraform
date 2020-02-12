# Security Group Port
variable "ssh_from_port"{
    default = "22"
}
variable "ssh_to_port"{
    default   = "22"
}
variable "protocol"{
    default = "tcp"
}
variable "cidr_blocks"{
    default = ["0.0.0.0/0"]
}

variable "ingress_from_port"{
   default = "8080" 
}

variable "ingress_to_port"{
   default = "8080" 
}

variable "ingress_protocol"{
    default = "tcp"
}

variable "ingress_cidr_blocks"{
    default = ["0.0.0.0/0"]
}

variable "egress_from_port"{
    default = "0"
}

variable "egress_to_port"{
    default = "0"
}
variable "egress_protocol"{
    default = "-1"
}

variable "egress_cidr_blocks"{
    default = ["0.0.0.0/0"]
}

