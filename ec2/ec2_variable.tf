variable "aws_region"{ 
   #description="Region to Launch Server's" 
   default="us-east-1" 
    }


variable "ami"{ 
    default = {
        "us-east-1" ="ami-08bc77a2c7eb2b1da" 
        "us-east-2" = "ami-0fc20dd1da406780b"
} 
} 

variable "type"{
    description = " T2 Micro Free"
    default = "t2.micro"
    }

variable "key_name"{
    default = "FriscoEC2KeyPair"
    }




variable "Tag_Name"{
    description = "Tag Name"
    default = "Ubuntu tomcat"
    }
