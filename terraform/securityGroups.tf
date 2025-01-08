resource "aws_security_group" "node_group_one" {
 name_prefix = "node_group_one"
 vpc_id      = module.vpc.vpc_id
 
 ingress {
   from_port = 22
   to_port   = 22
   protocol  = "tcp"
 
   cidr_blocks = [
     "10.0.0.0/8",
     "172.20.0.0/16"
   ]
 }

 ingress {
   from_port = 80
   to_port   = 80
   protocol  = "tcp"
 
   cidr_blocks = [
     "10.0.0.0/8",
     "172.20.0.0/16"
   ]
 }

 ingress {
   from_port = 8080
   to_port   = 8080
   protocol  = "tcp"
 
   cidr_blocks = [
     "10.0.0.0/8",
     "172.20.0.0/16"
   ]
 }

 ingress {
   from_port = 8090
   to_port   = 8090
   protocol  = "tcp"
 
   cidr_blocks = [
     "10.0.0.0/8",
     "172.20.0.0/16"
   ]
 }

 ingress {
   from_port = 9010
   to_port   = 9010
   protocol  = "tcp"
 
   cidr_blocks = [
     "10.0.0.0/8",
     "172.20.0.0/16"
   ]
 }

 egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.0.0.0/8",
     "172.20.0.0/16"]
  }
}
 
resource "aws_security_group" "node_group_two" {
 name_prefix = "node_group_two"
 vpc_id      = module.vpc.vpc_id
 
 ingress {
   from_port = 22
   to_port   = 22
   protocol  = "tcp"
 
   cidr_blocks = [
     "0.0.0.0/0",
   ]
 }

 ingress {
   from_port = 80
   to_port   = 80
   protocol  = "tcp"
 
   cidr_blocks = [
     "0.0.0.0/0",
   ]
 }

 ingress {
   from_port = 8080
   to_port   = 8080
   protocol  = "tcp"
 
   cidr_blocks = [
     "0.0.0.0/0",
   ]
 }

 ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 4200
    to_port     = 4200
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 9000
    to_port     = 9000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 9443
    to_port     = 9443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

 egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}