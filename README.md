# Terraform easy modules

Terraform module to deploy Jaeger

## Usage

```hcl
module "traefik" {
  source           = "easy-modules/jaeger"
  chart_name       = "jaeger"
  description      = "Jaeger is a modern HTTP reverse proxy and load balancer for microservices."
  chart_version    = "0.71.10"
  repository       = "https://jaegertracing.github.io/helm-charts"
  namespace        = "jaeger-system"
  wait             = true
  cleanup_on_fail  = true
  create_namespace = true 
  set_values = {
    values = {}
  }
}
```
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.8.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.10.1 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.22.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.10.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.jaeger_system](https://registry.terraform.io/providers/hashicorp/helm/2.10.1/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_chart_name"></a> [chart\_name](#input\_chart\_name) | Jaeger chart name | `string` | `"jaeger"` | no |
| <a name="input_chart_version"></a> [chart\_version](#input\_chart\_version) | Jaeger chart version | `string` | `"0.71.10"` | no |
| <a name="input_cleanup_on_fail"></a> [cleanup\_on\_fail](#input\_cleanup\_on\_fail) | Cleanup on fail | `bool` | `true` | no |
| <a name="input_create_namespace"></a> [create\_namespace](#input\_create\_namespace) | Create namespace | `bool` | `true` | no |
| <a name="input_description"></a> [description](#input\_description) | Jaeger chart description | `string` | `"Jaeger is a modern HTTP reverse proxy and load balancer for microservices."` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Jaeger namespace | `string` | `"jaeger-system"` | no |
| <a name="input_repository"></a> [repository](#input\_repository) | Jaeger chart repository | `string` | `"https://jaegertracing.github.io/helm-charts"` | no |
| <a name="input_set_values"></a> [set\_values](#input\_set\_values) | Jaeger values | `map(any)` | <pre>{<br>  "values": {}<br>}</pre> | no |
| <a name="input_wait"></a> [wait](#input\_wait) | Wait for Jaeger to be ready | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_jaeger_system_chart"></a> [jaeger\_system\_chart](#output\_jaeger\_system\_chart) | The chart of the jaeger system |
| <a name="output_jaeger_system_name"></a> [jaeger\_system\_name](#output\_jaeger\_system\_name) | The name of the jaeger system |
| <a name="output_jaeger_system_namespace"></a> [jaeger\_system\_namespace](#output\_jaeger\_system\_namespace) | The namespace of the jaeger system |
| <a name="output_jaeger_system_version"></a> [jaeger\_system\_version](#output\_jaeger\_system\_version) | The version of the jaeger system |
| <a name="output_repository"></a> [repository](#output\_repository) | The repository of the jaeger system |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
