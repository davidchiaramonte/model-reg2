view: most_recent_update {
  derived_table: {
    sql: select *
      from (
             select m.*, row_number() over (partition by model_gcp_project_id,model_name order by creation_timestamp desc) as rn
             from models m
           ) m2
      where m2.rn = 1 ;;
  }
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

parameter: model_metric_selector {
  label: "Model Algorithm Type"
  type: unquoted
  default_value: "classification"
  allowed_value: {
    label: "Linear Regression"
    value: "linear_regression"
  }
  allowed_value: {
    label: "Classification"
    value: "classification"
  }
  allowed_value: {
    label: "XGBoost"
    value: "xgboost"
  }
  # allowed_value: {
  #   label: "Logistic Regression"
  #   value: "logistic_regression"
  # }
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

dimension: deployment_status {
  type: string
  sql: ${TABLE}."deployment_status" ;;
}

dimension: domain {
  type: string
  sql: ${TABLE}."domain" ;;
  suggest_persist_for: "5 minutes"
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

dimension: git_branch {
  type: string
  sql: ${TABLE}."git_branch" ;;
}

dimension: is_primary_deployment {
  type: yesno
  sql: ${TABLE}."is_primary_deployment" ;;
}

dimension: is_sensitive_data {
  type: yesno
  sql: ${TABLE}."is_sensitive_data" ;;
}

dimension_group: last_publish_timestamp {
  type: time
  timeframes: [raw, time, date, week, month, quarter, year]
  sql: ${TABLE}."last_publish_timestamp" ;;
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
  suggest_persist_for: "5 minutes"
}

dimension: model_labels {
  type: string
  sql: ${TABLE}."model_labels" ;;
}

dimension: model_name {
  type: string
  sql: ${TABLE}."model_name" ;;
  suggest_persist_for: "5 minutes"
}

dimension: model_semantic_version {
  type: string
  sql: ${TABLE}."model_semantic_version" ;;
  suggest_persist_for: "5 minutes"
}

dimension: model_status {
  type: string
  sql: ${TABLE}."model_status" ;;
}

dimension: model_version_description {
  type: string
  sql: ${TABLE}."model_version_description" ;;
}

dimension: challenger_model_ids {
  type: string
  sql: ${TABLE}."challenger_model_ids" ;;
}

dimension: publish_status {
  type: string
  sql: ${TABLE}."publish_status" ;;
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
  label: "One-Class Accuracy"
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

dimension: mse {
  type: number
  sql: ${performance_metrics_summary} ->> 'mse' ;;
  label: "Mean Squared Error"
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

dimension: roc_auc {
  type: number
  sql: ${performance_metrics_summary} ->> 'roc_auc' ;;
  label: "ROC AUC"
}

dimension: log_loss {
  type: number
  sql: ${performance_metrics_summary} ->> 'log_loss' ;;
}

dimension: multi_class_accuracy {
  type: number
  sql: ${performance_metrics_summary} ->> 'Accuracy Score' ;;
  label: "Multi-Class Accuracy"
}

dimension: multi_class_macro_ovo {
  type: number
  sql: ${performance_metrics_summary} ->> 'ROC AUC Macro (OVO)' ;;
  label: "ROC AUC Macro (OVO)"
}

dimension: multi_class_macro_ovr {
  type: number
  sql: ${performance_metrics_summary} ->> 'ROC AUC Macro (OVR)' ;;
  label: "ROC AUC Macro (OVR)"
}

dimension: multi_class_weighted_ovo {
  type: number
  sql: ${performance_metrics_summary} ->> 'ROC AUC Weighted (OVO)' ;;
  label: "ROC AUC Weighted (OVO)"
}

dimension: multi_class_weighted_ovr {
  type: number
  sql: ${performance_metrics_summary} ->> 'ROC AUC Weighted (OVR)' ;;
  label: "ROC AUC Weighted (OVR)"
}

#========================================================================

# Dynamic Metrics
#
# If more model types want to be added, developers can add extra conditions to SQL clauses that follow the format below and replacing the text within the <> notation:
#
# {% elsif model_metric_selector._parameter_value == "<algorithm_here>" %}
#  ${<some_metric_name_here>}
#
# *BUT MAKE SURE TO ADD NEW ALGORITHMS TO THE PARAMETER ON LINE 46 ABOVE, FIRST!*

measure: dynamic_1 {
  type: average
  sql: {% if model_metric_selector._parameter_value == "linear_regression" %}
          ${mse}::FLOAT
         {% elsif model_metric_selector._parameter_value == "classification" %}
          ${accuracy}::FLOAT
         {% elsif model_metric_selector._parameter_value == "xgboost" %}
          ${multi_class_accuracy}::FLOAT
         {% else %}
          null
         {% endif %};;
  value_format_name: decimal_2
  html: {% if model_metric_selector._parameter_value == "linear_regression" %}
          <a href={{link}}>{{rendered_value}}<h3>Avg MSE</h3></a>
          {% elsif model_metric_selector._parameter_value == "classification" %}
          <a href={{link}}>{{rendered_value}}<h3>Avg Accuracy</h3></a>
          {% elsif model_metric_selector._parameter_value == "xgboost" %}
          <a href={{link}}>{{rendered_value}}<h3>Avg Accuracy</h3></a>
          {% else %}
          {{rendered_value}}
          {% endif %}
          ;;
  drill_fields: [model_name,model_gcp_project_id,performance_metrics_summary]
}
measure: dynamic_2 {
  type: average
  sql: {% if model_metric_selector._parameter_value == "linear_regression" %}
          ${rmse}::FLOAT
         {% elsif model_metric_selector._parameter_value == "classification" %}
          ${precision}::FLOAT
         {% elsif model_metric_selector._parameter_value == "xgboost" %}
          ${multi_class_macro_ovo}::FLOAT
         {% else %}
          null
         {% endif %};;
  value_format_name: decimal_2
  html: {% if model_metric_selector._parameter_value == "linear_regression" %}
          <a href={{link}}>{{rendered_value}}<h3>Avg RMSE</h3></a>
          {% elsif model_metric_selector._parameter_value == "classification" %}
          <a href={{link}}>{{rendered_value}}<h3>Avg Precision</h3></a>
          {% elsif model_metric_selector._parameter_value == "xgboost" %}
          <a href={{link}}>{{rendered_value}}<h3>Avg ROC AUC Macro (OVO)</h3></a>
          {% else %}
          {{rendered_value}}
          {% endif %}
          ;;
  drill_fields: [model_name,model_gcp_project_id,performance_metrics_summary]
}
measure: dynamic_3 {
  type: average
  sql: {% if model_metric_selector._parameter_value == "linear_regression" %}
          ${mae}::FLOAT
         {% elsif model_metric_selector._parameter_value == "classification" %}
          ${recall}::FLOAT
         {% elsif model_metric_selector._parameter_value == "xgboost" %}
          ${multi_class_macro_ovr}::FLOAT
         {% else %}
          null
         {% endif %};;
  value_format_name: decimal_2
  html: {% if model_metric_selector._parameter_value == "linear_regression" %}
          <a href={{link}}>{{rendered_value}}<h3>Avg MAE</h3></a>
          {% elsif model_metric_selector._parameter_value == "classification" %}
          <a href={{link}}>{{rendered_value}}<h3>Avg Recall</h3></a>
          {% elsif model_metric_selector._parameter_value == "xgboost" %}
          <a href={{link}}>{{rendered_value}}<h3>Avg ROC AUC Macro (OVR)</h3></a>
          {% else %}
          {{rendered_value}}
          {% endif %}
          ;;
  drill_fields: [model_name,model_gcp_project_id,performance_metrics_summary]
}
measure: dynamic_4 {
  type: average
  sql: {% if model_metric_selector._parameter_value == "linear_regression" %}
          ${r_squared}::FLOAT
         {% elsif model_metric_selector._parameter_value == "classification" %}
          ${f1_score}::FLOAT
         {% elsif model_metric_selector._parameter_value == "xgboost" %}
          ${multi_class_weighted_ovo}::FLOAT
         {% else %}
          null
         {% endif %};;
  value_format_name: decimal_2
  html: {% if model_metric_selector._parameter_value == "linear_regression" %}
          <a href={{link}}>{{rendered_value}}<h3>Avg R-Squared</h3></a>
          {% elsif model_metric_selector._parameter_value == "classification" %}
          <a href={{link}}>{{rendered_value}}<h3>Avg F1 Score</h3></a>
          {% elsif model_metric_selector._parameter_value == "xgboost" %}
          <a href={{link}}>{{rendered_value}}<h3>Avg ROC AUC Weighted (OVO) Score</h3></a>
          {% else %}
          {{rendered_value}}
          {% endif %}
          ;;
  drill_fields: [model_name,model_gcp_project_id,performance_metrics_summary]
}
measure: dynamic_5 {
  type: average
  sql: {% if model_metric_selector._parameter_value == "linear_regression" %}
          0
         {% elsif model_metric_selector._parameter_value == "classification" %}
          ${roc_auc}::FLOAT
         {% elsif model_metric_selector._parameter_value == "xgboost" %}
          ${multi_class_weighted_ovr}::FLOAT
         {% else %}
          null
         {% endif %};;
  value_format_name: decimal_2
  html: {% if model_metric_selector._parameter_value == "linear_regression" %}

              {% elsif model_metric_selector._parameter_value == "classification" %}
              <a href={{link}}>{{rendered_value}}<h3>Avg ROC AUC</h3></a>
              {% elsif model_metric_selector._parameter_value == "xgboost" %}
              <a href={{link}}>{{rendered_value}}<h3>Avg ROC AUC Weighted (OVR)</h3></a>
              {% else %}
              {{rendered_value}}
              {% endif %}
              ;;
  drill_fields: [model_name,model_gcp_project_id,performance_metrics_summary]
}
measure: dynamic_6 {
  type: average
  sql: {% if model_metric_selector._parameter_value == "linear_regression" %}
          0
         {% elsif model_metric_selector._parameter_value == "classification" %}
          ${log_loss}::FLOAT
         {% else %}
          0
         {% endif %};;
  value_format_name: decimal_2
  html: {% if model_metric_selector._parameter_value == "linear_regression" %}

              {% elsif model_metric_selector._parameter_value == "classification" %}
              <a href={{link}}>{{rendered_value}}<h3>Avg Log Loss</h3></a>
              {% elsif model_metric_selector._parameter_value == "xgboost" %}

    {% else %}
    {{rendered_value}}
    {% endif %}
    ;;
  drill_fields: [model_name,model_gcp_project_id,performance_metrics_summary]
}

#========================================================================



dimension: service_now_ticket_id {
  type: string
  sql: ${TABLE}."service_now_ticket_id" ;;
  link: {
    label: "View in ServiceNow"
    url: "https://hcaservicecentral.service-now.com/incident.do?sysparm_query=number={{value}}"
    icon_url: "https://play-lh.googleusercontent.com/HdfHZ5jnfMM1Ep7XpPaVdFIVSRx82wKlRC_qmnHx9H1E4aWNp4WKoOcH0x95NAnuYg=w480-h960-rw"
  }
}


dimension: trained_by {
  type: string
  sql: ${TABLE}."trained_by" ;;
}

dimension: training_data_uri {
  type: string
  sql: ${TABLE}."training_data_uri" ;;
  suggest_persist_for: "5 minutes"
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
measure: average_mse {
  type: average
  sql: ${mse}::FLOAT ;;
  value_format_name: decimal_2
  label: "Average Mean Squared Error"
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
measure: average_roc_auc {
  type: average
  sql: ${roc_auc}::FLOAT ;;
  value_format_name: decimal_2
  label: "Average ROC AUC"
  drill_fields: [model_name,model_gcp_project_id,performance_metrics_summary]
}
measure: average_log_loss {
  type: average
  sql: ${log_loss}::FLOAT ;;
  drill_fields: [model_name,model_gcp_project_id,performance_metrics_summary]
}
}
