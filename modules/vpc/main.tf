resource "aws_vpc" "main-vpc"{
    cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "subnet"{
    count = 4
    vpc_id = aws_vpc.main-vpc.id
    cidr_block = "10.0.${count.index}.0/24"
    availability_zone = "${data.aws_availability_zones.zones.names[count.index%2]}"
    map_public_ip_on_launch = count.index < 2
}

data "aws_availability_zones" "available"{}
