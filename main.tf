resource "aws_vpc" "default" {
  cidr_block                       = var.cidr_block
  instance_tenancy                 = var.instance_tenancy
  enable_dns_hostnames             = var.enable_dns_hostnames
  enable_dns_support               = var.enable_dns_support
  enable_classiclink               = var.enable_classiclink
  enable_classiclink_dns_support   = var.enable_classiclink_dns_support
  assign_generated_ipv6_cidr_block = true
  tags                             = module.label.tags
  lifecycle {
    ignore_changes = [tags]
  }
}

# If `aws_default_security_group` is not defined, it would be created implicitly with access `0.0.0.0/0`
resource "aws_default_security_group" "default" {
  vpc_id = aws_vpc.default.id
  tags = merge(
    {
      "Name" = module.sg_label.id
    },
    module.sg_label.tags
  )
}

resource "aws_internet_gateway" "default" {
  vpc_id = aws_vpc.default.id
  tags = merge(
    {
      "Name" = module.igw_label.id
    },
    module.igw_label.tags
  )
}
