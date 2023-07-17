variable "chart_name" {
  type        = string
  description = "Jaeger chart name"
  default     = "jaeger"
}

variable "description" {
  type        = string
  description = "Jaeger chart description"
  default     = "Jaeger is a modern HTTP reverse proxy and load balancer for microservices."
}

variable "chart_version" {
  type        = string
  description = "Jaeger chart version"
  default     = "0.71.10"
}

variable "repository" {
  type        = string
  description = "Jaeger chart repository"
  default     = "https://jaegertracing.github.io/helm-charts"
}

variable "namespace" {
  type        = string
  description = "Jaeger namespace"
  default     = "jaeger-system"
}

variable "wait" {
  type        = bool
  description = "Wait for Jaeger to be ready"
  default     = true
}

variable "cleanup_on_fail" {
  type        = bool
  description = "Cleanup on fail"
  default     = true
}

variable "create_namespace" {
  type        = bool
  description = "Create namespace"
  default     = true
}

variable "set_values" {
  type        = map(any)
  description = "Jaeger values"
  default = {
    values = {}
  }
}
