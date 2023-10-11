provider "aws" {
    
    region     = "us-east-1"
    
 
    
}

resource "aws_instance" "example" {
   ami           = "ami-03a6eaae9938c858c"
   instance_type = "t2.micro"

tags = {
  Name = "New-Server"
}
}


output "private_ip"{   
     value = aws_instance.example.private_ip
}
output "public_ip"{
     value = aws_instance.example.public_ip
}
