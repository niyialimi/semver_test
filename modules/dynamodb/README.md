## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_dynamodb_table.state_lock](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_billing_mode"></a> [billing\_mode](#input\_billing\_mode) | The billing mode | `any` | n/a | yes |
| <a name="input_table_name"></a> [table\_name](#input\_table\_name) | The dynamodb table name | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dynamodb"></a> [dynamodb](#output\_dynamodb) | n/a |
