---
- dashboard: example_high_level_dashboard
  title: Example High Level Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: A1oNz0eJb57VEhGdz0WyFU
  elements:
  - title: Average Recall
    name: Average Recall
    model: hca_ai_platform
    explore: models
    type: single_value
    fields: [models.dynamic_timeframe, models.average_recall]
    filters:
      models.average_recall: NOT NULL
    sorts: [models.dynamic_timeframe desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${models.average_recall}/offset(${models.average_recall},1)-1"
      label: Average Recall
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: average_recall
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Avg Recall
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [models.dynamic_timeframe]
    listen:
      GCP Project: models.model_gcp_project_id
      Domain: models.domain
      PoP Timeframe Selector: models.timeframe_selector
      Model Name: most_recent_update.model_name
      Training Data URI: most_recent_update.training_data_uri
      Model Status: most_recent_update.model_status
      Model Creation Date: models.creation_timestamp_date
    row: 4
    col: 3
    width: 3
    height: 4
  - title: Avg Precision
    name: Avg Precision
    model: hca_ai_platform
    explore: models
    type: single_value
    fields: [models.dynamic_timeframe, models.average_precision]
    filters:
      models.average_precision: NOT NULL
    sorts: [models.dynamic_timeframe desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${models.average_precision}/offset(${models.average_precision},1)-1"
      label: Average Recall
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: average_recall
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Avg Precision
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [models.dynamic_timeframe]
    listen:
      GCP Project: models.model_gcp_project_id
      Domain: models.domain
      PoP Timeframe Selector: models.timeframe_selector
      Model Name: most_recent_update.model_name
      Training Data URI: most_recent_update.training_data_uri
      Model Status: most_recent_update.model_status
      Model Creation Date: models.creation_timestamp_date
    row: 4
    col: 0
    width: 3
    height: 4
  - title: Avg Accuracy
    name: Avg Accuracy
    model: hca_ai_platform
    explore: models
    type: single_value
    fields: [models.dynamic_timeframe, models.average_accuracy]
    filters:
      models.average_accuracy: NOT NULL
    sorts: [models.dynamic_timeframe desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${models.average_accuracy}/offset(${models.average_accuracy},1)-1"
      label: Percent Change
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: percent_change
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Avg Accuracy
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [models.dynamic_timeframe]
    listen:
      GCP Project: models.model_gcp_project_id
      Domain: models.domain
      PoP Timeframe Selector: models.timeframe_selector
      Model Name: most_recent_update.model_name
      Training Data URI: most_recent_update.training_data_uri
      Model Status: most_recent_update.model_status
      Model Creation Date: models.creation_timestamp_date
    row: 4
    col: 6
    width: 3
    height: 4
  - title: Avg R Squared
    name: Avg R Squared
    model: hca_ai_platform
    explore: models
    type: single_value
    fields: [models.dynamic_timeframe, models.average_r_squared]
    filters:
      models.average_r_squared: NOT NULL
    sorts: [models.dynamic_timeframe desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${models.average_r_squared}/offset(${models.average_r_squared},1)-1"
      label: Percent Change
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: percent_change
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Avg R-Squared
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [models.dynamic_timeframe]
    listen:
      GCP Project: models.model_gcp_project_id
      Domain: models.domain
      PoP Timeframe Selector: models.timeframe_selector
      Model Name: most_recent_update.model_name
      Training Data URI: most_recent_update.training_data_uri
      Model Status: most_recent_update.model_status
      Model Creation Date: models.creation_timestamp_date
    row: 4
    col: 12
    width: 3
    height: 4
  - title: Avg F1 Score
    name: Avg F1 Score
    model: hca_ai_platform
    explore: models
    type: single_value
    fields: [models.dynamic_timeframe, models.average_f1]
    filters:
      models.average_f1: NOT NULL
    sorts: [models.dynamic_timeframe desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${models.average_f1}/offset(${models.average_f1},1)-1"
      label: Percent Change
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: percent_change
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Avg F1 Score
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [models.dynamic_timeframe]
    listen:
      GCP Project: models.model_gcp_project_id
      Domain: models.domain
      PoP Timeframe Selector: models.timeframe_selector
      Model Name: most_recent_update.model_name
      Training Data URI: most_recent_update.training_data_uri
      Model Status: most_recent_update.model_status
      Model Creation Date: models.creation_timestamp_date
    row: 4
    col: 9
    width: 3
    height: 4
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"High Level Metrics"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 2
    col: 0
    width: 24
    height: 2
  - title: Avg Log Loss
    name: Avg Log Loss
    model: hca_ai_platform
    explore: models
    type: single_value
    fields: [models.dynamic_timeframe, models.average_log_loss]
    filters:
      models.average_log_loss: NOT NULL
    sorts: [models.dynamic_timeframe desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${models.average_log_loss}/offset(${models.average_log_loss},1)-1"
      label: Percent Change
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: percent_change
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Avg Log Loss
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [models.dynamic_timeframe]
    listen:
      GCP Project: models.model_gcp_project_id
      Domain: models.domain
      PoP Timeframe Selector: models.timeframe_selector
      Model Name: most_recent_update.model_name
      Training Data URI: most_recent_update.training_data_uri
      Model Status: most_recent_update.model_status
      Model Creation Date: models.creation_timestamp_date
    row: 4
    col: 15
    width: 3
    height: 4
  - title: Avg RMSE
    name: Avg RMSE
    model: hca_ai_platform
    explore: models
    type: single_value
    fields: [models.dynamic_timeframe, models.average_rmse]
    filters:
      models.average_rmse: NOT NULL
    sorts: [models.dynamic_timeframe desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${models.average_rmse}/offset(${models.average_rmse},1)-1"
      label: Percent Change
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: percent_change
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Avg RMSE
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [models.dynamic_timeframe]
    listen:
      GCP Project: models.model_gcp_project_id
      Domain: models.domain
      PoP Timeframe Selector: models.timeframe_selector
      Model Name: most_recent_update.model_name
      Training Data URI: most_recent_update.training_data_uri
      Model Status: most_recent_update.model_status
      Model Creation Date: models.creation_timestamp_date
    row: 4
    col: 18
    width: 3
    height: 4
  - title: Avg MAE
    name: Avg MAE
    model: hca_ai_platform
    explore: models
    type: single_value
    fields: [models.dynamic_timeframe, models.average_mae]
    filters:
      models.average_mae: NOT NULL
    sorts: [models.dynamic_timeframe desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${models.average_mae}/offset(${models.average_mae},1)-1"
      label: Percent Change
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: percent_change
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Avg MAE
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [models.dynamic_timeframe]
    listen:
      GCP Project: models.model_gcp_project_id
      Domain: models.domain
      PoP Timeframe Selector: models.timeframe_selector
      Model Name: most_recent_update.model_name
      Training Data URI: most_recent_update.training_data_uri
      Model Status: most_recent_update.model_status
      Model Creation Date: models.creation_timestamp_date
    row: 4
    col: 21
    width: 3
    height: 4
  - title: Other Performance Metrics
    name: Other Performance Metrics
    model: hca_ai_platform
    explore: models
    type: looker_grid
    fields: [most_recent_update.model_name, most_recent_update.model_gcp_project_id,
      most_recent_update.trained_by, most_recent_update.performance_metrics_summary]
    sorts: [most_recent_update.model_name]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    listen:
      GCP Project: models.model_gcp_project_id
      Domain: models.domain
      PoP Timeframe Selector: models.timeframe_selector
      Model Name: most_recent_update.model_name
      Training Data URI: most_recent_update.training_data_uri
      Model Status: most_recent_update.model_status
      Model Creation Date: models.creation_timestamp_date
    row: 8
    col: 0
    width: 24
    height: 5
  - title: Model Performance
    name: Model Performance
    model: hca_ai_platform
    explore: models
    type: looker_line
    fields: [models.dynamic_timeframe, models.average_accuracy, models.average_f1,
      models.average_log_loss, models.average_mae, models.average_precision, models.average_r_squared,
      models.average_recall, models.average_rmse]
    filters: {}
    sorts: [models.dynamic_timeframe]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: models.average_accuracy,
            id: models.average_accuracy, name: Average Accuracy}, {axisId: models.average_f1,
            id: models.average_f1, name: Average F1 Score}, {axisId: models.average_log_loss,
            id: models.average_log_loss, name: Average Log Loss}, {axisId: models.average_precision,
            id: models.average_precision, name: Average Precision}, {axisId: models.average_r_squared,
            id: models.average_r_squared, name: Average R-Squared}, {axisId: models.average_recall,
            id: models.average_recall, name: Average Recall}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    defaults_version: 1
    hidden_fields: [models.average_mae, models.average_rmse]
    listen:
      GCP Project: models.model_gcp_project_id
      Domain: models.domain
      PoP Timeframe Selector: models.timeframe_selector
      Model Name: most_recent_update.model_name
      Training Data URI: most_recent_update.training_data_uri
      Model Status: most_recent_update.model_status
      Model Creation Date: models.creation_timestamp_date
    row: 13
    col: 0
    width: 24
    height: 12
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Production Models"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 25
    col: 0
    width: 24
    height: 2
  - title: Production Models
    name: Production Models
    model: hca_ai_platform
    explore: models
    type: looker_grid
    fields: [most_recent_update.model_name, most_recent_update.model_gcp_project_id,
      most_recent_update.model_semantic_version, most_recent_update.performance_metrics_summary]
    filters:
      most_recent_update.promotion_status: production
    sorts: [most_recent_update.model_name]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    title_hidden: true
    listen:
      GCP Project: models.model_gcp_project_id
      Domain: models.domain
      PoP Timeframe Selector: models.timeframe_selector
      Model Name: most_recent_update.model_name
      Training Data URI: most_recent_update.training_data_uri
      Model Status: most_recent_update.model_status
      Model Creation Date: models.creation_timestamp_date
    row: 27
    col: 0
    width: 24
    height: 5
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Shadow Models"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 32
    col: 0
    width: 24
    height: 2
  - title: Shadow Deployments
    name: Shadow Deployments
    model: hca_ai_platform
    explore: models
    type: looker_grid
    fields: [most_recent_update.model_name, most_recent_update.model_gcp_project_id,
      most_recent_update.shadow_deployment_status, most_recent_update.performance_metrics_summary]
    filters:
      most_recent_update.shadow_deployment_status: "-NULL"
    sorts: [most_recent_update.model_name]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    listen:
      GCP Project: models.model_gcp_project_id
      Domain: models.domain
      PoP Timeframe Selector: models.timeframe_selector
      Model Name: most_recent_update.model_name
      Training Data URI: most_recent_update.training_data_uri
      Model Status: most_recent_update.model_status
      Model Creation Date: models.creation_timestamp_date
    row: 34
    col: 0
    width: 24
    height: 5
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Other Info"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 39
    col: 0
    width: 24
    height: 2
  - title: Owner Info
    name: Owner Info
    model: hca_ai_platform
    explore: models
    type: looker_pie
    fields: [most_recent_update.trained_by, most_recent_update.count]
    sorts: [most_recent_update.count desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    listen:
      GCP Project: models.model_gcp_project_id
      Domain: models.domain
      PoP Timeframe Selector: models.timeframe_selector
      Model Name: most_recent_update.model_name
      Training Data URI: most_recent_update.training_data_uri
      Model Status: most_recent_update.model_status
      Model Creation Date: models.creation_timestamp_date
    row: 41
    col: 0
    width: 12
    height: 8
  - title: Model Use Cases
    name: Model Use Cases
    model: hca_ai_platform
    explore: models
    type: looker_grid
    fields: [most_recent_update.model_name, most_recent_update.model_gcp_project_id,
      most_recent_update.use_case, most_recent_update.model_version_description]
    sorts: [most_recent_update.model_name]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    defaults_version: 1
    listen:
      GCP Project: models.model_gcp_project_id
      Domain: models.domain
      PoP Timeframe Selector: models.timeframe_selector
      Model Name: most_recent_update.model_name
      Training Data URI: most_recent_update.training_data_uri
      Model Status: most_recent_update.model_status
      Model Creation Date: models.creation_timestamp_date
    row: 41
    col: 12
    width: 12
    height: 8
  - title: Models Containing PII
    name: Models Containing PII
    model: hca_ai_platform
    explore: models
    type: looker_column
    fields: [models.dynamic_timeframe, models.count, models.is_sensitive_data]
    pivots: [models.is_sensitive_data]
    fill_fields: [models.is_sensitive_data]
    filters: {}
    sorts: [models.is_sensitive_data, models.dynamic_timeframe]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: if(is_null(${models.count})=yes,0,${models.count})
      label: Models Count
      value_format:
      value_format_name: id
      _kind_hint: measure
      table_calculation: models_count
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_fields: [models.count]
    hidden_pivots: {}
    defaults_version: 1
    listen:
      GCP Project: models.model_gcp_project_id
      Domain: models.domain
      PoP Timeframe Selector: models.timeframe_selector
      Model Name: most_recent_update.model_name
      Training Data URI: most_recent_update.training_data_uri
      Model Status: most_recent_update.model_status
      Model Creation Date: models.creation_timestamp_date
    row: 49
    col: 0
    width: 24
    height: 8
  - name: " (5)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="border-bottom: solid 1px #4285F4;">
      <nav style="font-size: 15px; padding: 5px 10px 0 10px; height: 60px">
        <a style="padding: 5px 15px; border-top: solid 1px #4285F4; border-left: solid 1px #4285F4; border-right: solid 1px #4285F4; border-radius: 5px 5px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #eaf1fe;" href="https://hcahealthcarecorpnp.cloud.looker.com/dashboards/hca_ai_platform::example_high_level_dashboard">
      High Level Dashboard</a>
        <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="https://hcahealthcarecorpnp.cloud.looker.com/dashboards/hca_ai_platform::example_deep_dive_dashboard">Deep Dive Dashboard</a>
        <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="https://hcahealthcarecorpnp.cloud.looker.com/dashboards/hca_ai_platform::example_comparison_dashboard">Comparison Dashboard</a>
      </nav>
      </div>
    row: 0
    col: 0
    width: 24
    height: 2
  filters:
  - name: PoP Timeframe Selector
    title: PoP Timeframe Selector
    type: field_filter
    default_value: day
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: hca_ai_platform
    explore: models
    listens_to_filters: []
    field: models.timeframe_selector
  - name: Model Creation Date
    title: Model Creation Date
    type: field_filter
    default_value: 30 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: hca_ai_platform
    explore: models
    listens_to_filters: []
    field: models.creation_timestamp_date
  - name: GCP Project
    title: GCP Project
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: hca_ai_platform
    explore: models
    listens_to_filters: []
    field: models.model_gcp_project_id
  - name: Model Name
    title: Model Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: hca_ai_platform
    explore: models
    listens_to_filters: [GCP Project]
    field: most_recent_update.model_name
  - name: Domain
    title: Domain
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: hca_ai_platform
    explore: models
    listens_to_filters: [GCP Project]
    field: models.domain
  - name: Training Data URI
    title: Training Data URI
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: hca_ai_platform
    explore: models
    listens_to_filters: [GCP Project]
    field: most_recent_update.training_data_uri
  - name: Model Status
    title: Model Status
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: hca_ai_platform
    explore: models
    listens_to_filters: [GCP Project]
    field: most_recent_update.model_status
