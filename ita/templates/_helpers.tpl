{{/*
App name
*/}}
{{- define "app.name" -}}
{{ .Values.appName | default .Release.Name | lower }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "app.selectorLabels" -}}
app: {{ include "app.name" . }}
name: {{ include "app.name" . }}
{{- end -}}
