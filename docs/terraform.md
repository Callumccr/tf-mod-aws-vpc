## Providers

| Name | Version |
|------|---------|
| aws | ~> 3.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| cidr\_block | CIDR for the VPC | `string` | n/a | yes |
| attributes | (Optional) - Additional attributes (e.g. `1`) | `list(string)` | `[]` | no |
| aws\_account\_id | The AWS account id of the provider being deployed to (e.g. 12345678). Autoloaded from account.tfvars | `string` | `""` | no |
| aws\_assume\_role\_arn | ARN of the IAM role when optionally connecting to AWS via assumed role. Autoloaded from account.tfvars. | `string` | `""` | no |
| aws\_region | The AWS region (e.g. ap-southeast-2). Autoloaded from region.tfvars. | `string` | `""` | no |
| context | Default context to use for passing state between label invocations | <code><pre>object({<br>    namespace           = string<br>    environment         = string<br>    stage               = string<br>    name                = string<br>    enabled             = bool<br>    delimiter           = string<br>    attributes          = list(string)<br>    label_order         = list(string)<br>    tags                = map(string)<br>    additional_tag_map  = map(string)<br>    regex_replace_chars = string<br>  })<br></pre></code> | <code><pre>{<br>  "additional_tag_map": {},<br>  "attributes": [],<br>  "delimiter": "",<br>  "enabled": true,<br>  "environment": "",<br>  "label_order": [],<br>  "name": "",<br>  "namespace": "",<br>  "regex_replace_chars": "",<br>  "stage": "",<br>  "tags": {}<br>}<br></pre></code> | no |
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
| igw\_id | The ID of the Internet Gateway |
| ipv6\_cidr\_block | The IPv6 CIDR block |
| vpc\_cidr\_block | The CIDR block of the VPC |
| vpc\_default\_network\_acl\_id | The ID of the network ACL created by default on VPC creation |
| vpc\_default\_route\_table\_id | The ID of the route table created by default on VPC creation |
| vpc\_default\_security\_group\_id | The ID of the security group created by default on VPC creation |
| vpc\_id | The ID of the VPC |
| vpc\_ipv6\_association\_id | The association ID for the IPv6 CIDR block |
| vpc\_main\_route\_table\_id | The ID of the main route table associated with this VPC |

