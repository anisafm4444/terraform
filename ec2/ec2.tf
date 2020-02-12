resource "aws_instance" "tomcat" {
#depends_on = ["null_resource.create_user_in_db"]
#  ami             = "${var.ami}"
   ami             = "${lookup(var.ami, var.aws_region)}"
  instance_type   = "${var.type}"
  key_name        = "${var.key_name}"
#  key_name        = "${lookup(var.key_name, var.aws_region)}"
  vpc_security_group_ids = ["${aws_security_group.allow_ssh.id}"]

    provisioner "remote-exec" {
    inline = [
      "ping -c 10 8.8.8.8",
      "sudo apt-get update",
      "sudo apt-get -y install tomcat7 tomcat7-admin",
	    "sudo apt-get update",
      "sudo apt-get -y install tomcat7 tomcat7-admin",
      "sudo rm -f /etc/tomcat7/tomcat-users.xml",
      "sudo wget https://raw.githubusercontent.com/roybhaskar9/terraform/master/tomcat-users.xml -P /etc/tomcat7/",
      "sudo service tomcat7 restart",
	  "wget https://github.com/roybhaskar9/terraform/raw/master/sample.war -O /tmp/sample.war",
      "wget --http-user=admin --http-password=admin 'http://localhost:8080/manager/text/deploy?war=file:/tmp/sample.war&path=/sampleapp' -O -"
        ] 
      }
    connection {
    type     = "ssh"
    user     = "ubuntu"
    private_key = "${file("FriscoEC2KeyPair.pem")}"
    host     = "${self.public_ip}"
  }
  tags = {
    Name = "${var.Tag_Name}"
  }
}