{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{define "cassandra.name"}}
{{- $name := printf "%s-%s" .Values.clusterName .Values.datacenterName -}}
{{ default $name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{end}}
