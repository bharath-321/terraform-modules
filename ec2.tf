
resource "aws_instance" "web-1" {
    count = 3
    ami = "ami-0e0bf4b3a0c0e0adc"
    #ami = "ami-0d857ff0f5fc4e03b"
   # availability_zone = "us-east-1a"
    instance_type = "t2.micro"
    key_name = "vasireddy22"
    subnet_id = "{aws_subnet.subnet1-public.id}"
    vpc_security_group_ids = ["{aws_security_group.allow_all.id}"]
    associate_public_ip_address = true	
    tags = {
        Name = "Server-1"
        Env = "Prod"
        Owner = "Sree"
	    CostCenter = "ABCD"
    }
}
