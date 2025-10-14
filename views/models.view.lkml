# The name of this view in Looker is "Models"
view: models {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.models ;;
  drill_fields: [model_global_id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: model_global_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."model_global_id" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: creation_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."creation_timestamp" ;;
  }

  parameter: timeframe_selector {
    type: unquoted
    default_value: "day"
    allowed_value: {
      label: "Day"
      value: "day"
    }
    allowed_value: {
      label: "Week"
      value: "week"
    }
    allowed_value: {
      label: "Month"
      value: "month"
    }
    allowed_value: {
      label: "Year"
      value: "year"
    }
  }

  dimension: dynamic_timeframe {
    type: string
    label_from_parameter: timeframe_selector
    sql:
    {% if timeframe_selector._parameter_value == "day" %} ${creation_timestamp_date}
    {% elsif timeframe_selector._parameter_value == "week" %} ${creation_timestamp_week}
    {% elsif timeframe_selector._parameter_value == "month" %} ${creation_timestamp_month}
    {% elsif timeframe_selector._parameter_value == "year" %} ${creation_timestamp_year}
    {% else %} ${creation_timestamp_date}
    {% endif %};;
  }
  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Deployment Endpoint ID" in Explore.

  dimension: deployment_endpoint_id {
    type: string
    sql: ${TABLE}."deployment_endpoint_id" ;;
  }

  dimension: deployment_environment {
    type: string
    sql: ${TABLE}."deployment_environment" ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}."domain" ;;
  }

  dimension: gcs_artifact_path {
    type: string
    sql: ${TABLE}."gcs_artifact_path" ;;
  }

  dimension: general_notes {
    type: string
    sql: ${TABLE}."general_notes" ;;
  }

  dimension: git_commit_hash {
    type: string
    sql: ${TABLE}."git_commit_hash" ;;
  }

  dimension: git_repo_url {
    type: string
    sql: ${TABLE}."git_repo_url" ;;
  }

  dimension: is_primary_deployment {
    type: yesno
    sql: ${TABLE}."is_primary_deployment" ;;
  }

  dimension: is_sensitive_data {
    type: yesno
    sql: ${TABLE}."is_sensitive_data" ;;
  }

  dimension_group: last_promoted_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."last_promoted_timestamp" ;;
  }

  dimension_group: last_updated_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."last_updated_timestamp" ;;
  }

  dimension: model_aliases {
    type: string
    sql: ${TABLE}."model_aliases" ;;
  }

  dimension: model_gcp_project_id {
    type: string
    sql: ${TABLE}."model_gcp_project_id" ;;
  }

  dimension: model_labels {
    type: string
    sql: ${TABLE}."model_labels" ;;
  }

  dimension: model_name {
    type: string
    sql: ${TABLE}."model_name" ;;
  }

  dimension: model_semantic_version {
    type: string
    sql: ${TABLE}."model_semantic_version" ;;
  }

  dimension: model_status {
    type: string
    sql: ${TABLE}."model_status" ;;
  }

  dimension: model_version_description {
    type: string
    sql: ${TABLE}."model_version_description" ;;
  }

  dimension: path_to_production_projects {
    type: string
    sql: ${TABLE}."path_to_production_projects" ;;
  }

  dimension: performance_metrics_summary {
    type: string
    sql: ${TABLE}."performance_metrics_summary" ;;
  }

  #=====================Individual Performance Metrics=====================

  dimension: recall {
    type: number
    sql: ${performance_metrics_summary} ->> 'recall' ;;
  }

  dimension: accuracy {
    type: number
    sql: ${performance_metrics_summary} ->> 'accuracy' ;;
  }

  dimension: precision {
    type: number
    sql: ${performance_metrics_summary} ->> 'precision' ;;
  }

  dimension: mae {
    type: number
    sql: ${performance_metrics_summary} ->> 'mae' ;;
    label: "Mean Absolute Error"
  }

  dimension: rmse {
    type: number
    sql: ${performance_metrics_summary} ->> 'rmse' ;;
    label: "Root Mean Squared Error"
  }

  dimension: r_squared {
    type: number
    sql: ${performance_metrics_summary} ->> 'r_squared' ;;
    label: "R-Squared"
  }

  dimension: f1_score {
    type: number
    sql: ${performance_metrics_summary} ->> 'f1_score' ;;
    label: "F1 Score"
  }

  dimension: log_loss {
    type: number
    sql: ${performance_metrics_summary} ->> 'log_loss' ;;
  }

  #========================================================================

  dimension: promotion_status {
    type: string
    sql: ${TABLE}."promotion_status" ;;
  }

  dimension: service_now_ticket_id {
    type: string
    sql: ${TABLE}."service_now_ticket_id" ;;
    link: {
      label: "View in ServiceNow"
      url: "https://hcaservicecentral.service-now.com/incident.do?sysparm_query=number={{value}}"
      icon_url: "https://play-lh.googleusercontent.com/HdfHZ5jnfMM1Ep7XpPaVdFIVSRx82wKlRC_qmnHx9H1E4aWNp4WKoOcH0x95NAnuYg=w480-h960-rw"
    }
  }

  dimension: shadow_deployment_status {
    type: string
    sql: ${TABLE}."shadow_deployment_status" ;;
  }

  dimension: trained_by {
    type: string
    sql: ${TABLE}."trained_by" ;;
  }

  dimension: training_data_uri {
    type: string
    sql: ${TABLE}."training_data_uri" ;;
    html:
    {% if value contains "gs://" %}
    <a href="https://console.cloud.google.com/storage/browser/{{value | remove_first: "gs://"}}">{{rendered_value}}</a>
    {% elsif value contains "bq://" %}
    {% assign bq_shorthand = value | remove_first: "bq://" %}
    {% assign project_id_with_dataset = bq_shorthand | split: ':' %}
    {% assign project_id = project_id_with_dataset[0] %}
    {% assign dataset_and_table = project_id_with_dataset[1] | split: '.' %}
    {% assign dataset_id = dataset_and_table[0] %}
    {% assign table_id = dataset_and_table[1] %}
    {% assign console_url = 'https://console.cloud.google.com/bigquery?project=' | append: project_id | append: '&ws=!1m5!1m4!4m3!1s' | append: project_id | append: '!2s' | append: dataset_id | append: '!3s' | append: table_id %}
    <a href="{{console_url}}">{{rendered_value}}</a>
    {% else %}
    <a href="{{value}}">{{rendered_value}}</a>
    {% endif %};;
  }

  dimension: use_case {
    type: string
    sql: ${TABLE}."use_case" ;;
  }

  dimension: vertex_ai_experiment_name {
    type: string
    sql: ${TABLE}."vertex_ai_experiment_name" ;;
  }

  dimension: vertex_ai_model_resource_name {
    type: string
    sql: ${TABLE}."vertex_ai_model_resource_name" ;;
  }

  dimension: model_region {
    type: string
    sql: split_part(${vertex_ai_model_resource_name},'/',4) ;;
  }

  dimension: vertex_ai_model_version_id {
    type: number
    sql: ${TABLE}."vertex_ai_model_version_id" ;;
  }

  dimension: vertex_ai_pipeline_job_run_id {
    type: string
    sql: ${TABLE}."vertex_ai_pipeline_job_run_id" ;;
  }
  dimension: link_to_vertex_job {
    type: string
    sql: ${TABLE}."vertex_ai_pipeline_job_run_id" ;;
    html: <a href="https://console.cloud.google.com/vertex-ai/pipelines/locations/{{model_region._value}}/runs/{{value}}?project={{model_gcp_project_id._value}}">[Link]</a> ;;
  }
  dimension: link_to_vertex_monitoring {
    type: string
    sql: ${model_gcp_project_id} ;;
    html: <a href="https://console.cloud.google.com/vertex-ai/model-monitoring/model-monitors?project={{value}}">[Link]</a> ;;
  }
  measure: count {
    type: count
    drill_fields: [model_global_id, model_name, vertex_ai_model_resource_name, vertex_ai_experiment_name]
  }
  measure: average_recall {
    type: average
    sql: ${recall}::FLOAT ;;
    value_format_name: decimal_2
    drill_fields: [model_name,model_gcp_project_id,performance_metrics_summary]
  }
  measure: average_accuracy {
    type: average
    sql: ${accuracy}::FLOAT ;;
    value_format_name: decimal_2
    drill_fields: [model_name,model_gcp_project_id,performance_metrics_summary]
  }
  measure: average_precision {
    type: average
    sql: ${precision}::FLOAT ;;
    value_format_name: decimal_2
    drill_fields: [model_name,model_gcp_project_id,performance_metrics_summary]
  }
  measure: average_mae {
    type: average
    sql: ${mae}::FLOAT ;;
    label: "Average Mean Absolute Error"
    value_format_name: decimal_2
    drill_fields: [model_name,model_gcp_project_id,performance_metrics_summary]
  }
  measure: average_rmse {
    type: average
    sql: ${rmse}::FLOAT ;;
    label: "Average Root Mean Squared Error"
    value_format_name: decimal_2
    drill_fields: [model_name,model_gcp_project_id,performance_metrics_summary]
  }
  measure: average_r_squared {
    type: average
    sql: ${r_squared}::FLOAT ;;
    label: "Average R-Squared"
    value_format_name: decimal_2
    drill_fields: [model_name,model_gcp_project_id,performance_metrics_summary]
  }
  measure: average_f1 {
    type: average
    sql: ${f1_score}::FLOAT ;;
    label: "Average F1 Score"
    value_format_name: decimal_2
    drill_fields: [model_name,model_gcp_project_id,performance_metrics_summary]
  }
  measure: average_log_loss {
    type: average
    sql: ${log_loss}::FLOAT ;;
    drill_fields: [model_name,model_gcp_project_id,performance_metrics_summary]
  }
}
