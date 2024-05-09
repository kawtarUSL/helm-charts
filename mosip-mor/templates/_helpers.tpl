{{/*
Return the fully qualified name of the chart
*/}}
{{- define "mosip-mor.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Return the chart name
*/}}
{{- define "mosip-mor.name" -}}
{{- .Chart.Name -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "mosip-mor.labels" -}}
app.kubernetes.io/name: {{ include "mosip-mor.name" . }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

