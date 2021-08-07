# Variables
variable "aws_access_key"{
    default =""
}
variable "aws_secret_key"{
    default =""
}
variable "key_name"{
    default ="myOhiokey"
}
variable "instance_type"{
    default ="t2.micro"
}
# Provider
provider "aws"{
    access_key ="${var.aws_access_key}"
    secret_key ="${var.aws_secret_key}"
    region ="us-east-2"
}
# Resource
resource "aws_instance""mytestinstance"{
    ami ="ami-0d563aeddd4be7fff"
    instance_type ="${var.instance_type}"
    key_name ="${var.key_name}"
}
# Output
output "aws_instance_public_dns"{
    value ="${aws_instance.mytestinstance.public_dns}"
}
