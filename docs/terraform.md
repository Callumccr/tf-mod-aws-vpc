## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.0 >= 2.7.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| cidr\_block | CIDR for the VPC | `string` | n/a | yes |
| allow\_all\_egress | (Optional) - Whether to allow ALL egress (0.0.0.0/0) | `bool` | `true` | no |
| allow\_all\_ingress | (Optional) - Whether to allow ALL egress (0.0.0.0/0) | `bool` | `true` | no |
| attributes | (Optional) - Additional attributes (e.g. `1`) | `list(string)` | `[]` | no |
| aws\_account\_id | The AWS account id of the provider being deployed to (e.g. 12345678). Autoloaded from account.tfvars | `string` | `""` | no |
| aws\_assume\_role\_arn | (Optional) - ARN of the IAM role when optionally connecting to AWS via assumed role. Autoloaded from account.tfvars. | `string` | `""` | no |
| aws\_assume\_role\_external\_id | (Optional) - The external ID to use when making the AssumeRole call. | `string` | `""` | no |
| aws\_assume\_role\_session\_name | (Optional) - The session name to use when making the AssumeRole call. | `string` | `""` | no |
| aws\_region | The AWS region (e.g. ap-southeast-2). Autoloaded from region.tfvars. | `string` | `""` | no |
| delimiter | (Optional) - Delimiter to be used between `namespace`, `environment`, `stage`, `name` and `attributes` | `string` | `"-"` | no |
| enable\_classiclink | A boolean flag to enable/disable ClassicLink for the VPC | `bool` | `false` | no |
| enable\_classiclink\_dns\_support | A boolean flag to enable/disable ClassicLink DNS Support for the VPC | `bool` | `false` | no |
| enable\_dns\_hostnames | A boolean flag to enable/disable DNS hostnames in the VPC | `bool` | `true` | no |
| enable\_dns\_support | A boolean flag to enable/disable DNS support in the VPC | `bool` | `true` | no |
| enabled | (Optional). A Switch that decides whether to create the module. Default is true | `bool` | `true` | no |
| environment | (Optional) - Environment, e.g. 'dev', 'qa', 'staging', 'prod' | `string` | `""` | no |
| instance\_tenancy | A tenancy option for instances launched into the VPC | `string` | `"default"` | no |
| name | (Optional) - Solution name, e.g. 'vault', 'consul', 'keycloak', 'k8s', or 'baseline' | `string` | `""` | no |
| namespace | (Optional) - Namespace, which could be your abbreviated product team, e.g. 'rci', 'mi', 'hp', or 'core' | `string` | `""` | no |
| tags | (Optional) - Additional tags | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| cidr\_block | The CIDR block of the VPC |
| default\_network\_acl\_id | The ID of the network ACL created by default on VPC creation |
| default\_route\_table\_id | The ID of the route table created by default on VPC creation |
| default\_security\_group\_id | The ID of the security group created by default on VPC creation |
| igw\_id | The ID of the Internet Gateway |
| ipv6\_association\_id | The association ID for the IPv6 CIDR block |
| ipv6\_cidr\_block | The IPv6 CIDR block |
| main\_route\_table\_id | The ID of the main route table associated with this VPC |
| security\_group\_arn | The ARN of the security group |
| security\_group\_id | The ID of the security group |
| vpc\_id | The ID of the VPC |

