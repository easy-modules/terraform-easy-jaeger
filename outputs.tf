output "jaeger_system_name" {
  description = "The name of the jaeger system"
  value       = helm_release.jaeger_system.name
}

output "jaeger_system_namespace" {
  description = "The namespace of the jaeger system"
  value       = helm_release.jaeger_system.namespace
}

output "jaeger_system_version" {
  description = "The version of the jaeger system"
  value       = helm_release.jaeger_system.version
}

output "jaeger_system_chart" {
  description = "The chart of the jaeger system"
  value       = helm_release.jaeger_system.chart
}

output "repository" {
  description = "The repository of the jaeger system"
  value       = helm_release.jaeger_system.repository
}
