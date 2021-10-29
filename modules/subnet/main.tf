resource "aws_subnet" "subnet"{
  count = 2
  vpc_id = var.vpc_id
  cidr_block = "10.0.${count.index}.0/24"
  availability_zone = "${data.aws_availability_zones.zones.names[count.index]}"
  map_public_ip_on_launch = var.public
}

data "aws_availability_zones" "zones"{}
