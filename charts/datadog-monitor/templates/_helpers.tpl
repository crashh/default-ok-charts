{{- define "datadogmonitor.name" -}}
{{  default .Release.Name | trunc 255 | trimSuffix "-"}}
{{- end -}}

{{- define "datadogmonitor.labels" -}}
app: {{ include "datadogmonitor.name" $ }}
chart-name: {{ .Chart.Name }}
chart-version: {{ .Chart.Version }}
{{- end -}}