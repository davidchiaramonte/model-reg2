---
- dashboard: example_dynamic_high_level_dashboard
  title: Example Dynamic High Level Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: ym35iMbhoywdcYawllQzjz
  elements:
  - title: Average Recall
    name: Average Recall
    model: hca_ai_platform
    explore: models
    type: single_value
    fields: [models.dynamic_timeframe, models.dynamic_2]
    filters:
      models.average_recall: NOT NULL
    sorts: [models.dynamic_timeframe desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${models.dynamic_2}/offset(${models.dynamic_2},1)-1"
      label: Comparison
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: comparison
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Avg Recall
    smart_single_value_size: false
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
      Model Algorithm Type: models.model_metric_selector
    row: 4
    col: 4
    width: 4
    height: 4
  - title: Avg Precision
    name: Avg Precision
    model: hca_ai_platform
    explore: models
    type: single_value
    fields: [models.dynamic_timeframe, models.dynamic_1]
    filters:
      models.average_precision: NOT NULL
      models.model_metric_selector: classification
    sorts: [models.dynamic_timeframe desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${models.dynamic_1}/offset(${models.dynamic_1},1)-1"
      label: Comparison
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: comparison
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#000000"
    single_value_title: Avg Precision
    smart_single_value_size: false
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
      Model Algorithm Type: models.model_metric_selector
    row: 4
    col: 0
    width: 4
    height: 4
  - title: Avg Accuracy
    name: Avg Accuracy
    model: hca_ai_platform
    explore: models
    type: single_value
    fields: [models.dynamic_timeframe, models.dynamic_3]
    filters:
      models.average_accuracy: NOT NULL
    sorts: [models.dynamic_timeframe desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${models.dynamic_3}/offset(${models.dynamic_3},1)-1"
      label: Comparison
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: comparison
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Avg Accuracy
    smart_single_value_size: false
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
      Model Algorithm Type: models.model_metric_selector
    row: 4
    col: 8
    width: 4
    height: 4
  - title: Avg R Squared
    name: Avg R Squared
    model: hca_ai_platform
    explore: models
    type: single_value
    fields: [models.dynamic_timeframe, models.dynamic_5]
    sorts: [models.dynamic_timeframe desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${models.dynamic_5}/offset(${models.dynamic_5},1)-1"
      label: Comparison
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: comparison
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Avg R-Squared
    smart_single_value_size: false
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
      Model Algorithm Type: models.model_metric_selector
    row: 4
    col: 16
    width: 4
    height: 4
  - title: Avg F1 Score
    name: Avg F1 Score
    model: hca_ai_platform
    explore: models
    type: single_value
    fields: [models.dynamic_timeframe, models.dynamic_4]
    filters:
      models.average_f1: NOT NULL
    sorts: [models.dynamic_timeframe desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${models.dynamic_4}/offset(${models.dynamic_4},1)-1"
      label: Comparison
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: comparison
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Avg F1 Score
    smart_single_value_size: false
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
      Model Algorithm Type: models.model_metric_selector
    row: 4
    col: 12
    width: 4
    height: 4
  - name: ''
    type: text
    title_text: ''
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
    fields: [models.dynamic_timeframe, models.dynamic_6]
    filters:
      models.average_log_loss: NOT NULL
    sorts: [models.dynamic_timeframe desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${models.dynamic_6}/offset(${models.dynamic_6},1)-1"
      label: Comparison
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: comparison
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Avg Log Loss
    smart_single_value_size: false
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
      Model Algorithm Type: models.model_metric_selector
    row: 4
    col: 20
    width: 4
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
      Model Algorithm Type: models.model_metric_selector
    row: 8
    col: 0
    width: 24
    height: 5
  - title: Model Performance
    name: Model Performance
    model: hca_ai_platform
    explore: models
    type: looker_line
    fields: [models.dynamic_timeframe, models.dynamic_1, models.dynamic_2, models.dynamic_3,
      models.dynamic_4, models.dynamic_5, models.dynamic_6]
    sorts: [models.dynamic_1 desc 0]
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
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: true
    hidden_pivots: {}
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      GCP Project: models.model_gcp_project_id
      Domain: models.domain
      PoP Timeframe Selector: models.timeframe_selector
      Model Name: most_recent_update.model_name
      Training Data URI: most_recent_update.training_data_uri
      Model Status: most_recent_update.model_status
      Model Creation Date: models.creation_timestamp_date
      Model Algorithm Type: models.model_metric_selector
    row: 13
    col: 0
    width: 24
    height: 12
  - name: " (2)"
    type: text
    title_text: ''
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
      Model Algorithm Type: models.model_metric_selector
    row: 27
    col: 0
    width: 24
    height: 5
  - name: " (3)"
    type: text
    title_text: ''
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
      Model Algorithm Type: models.model_metric_selector
    row: 34
    col: 0
    width: 24
    height: 5
  - name: " (4)"
    type: text
    title_text: ''
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
      Model Algorithm Type: models.model_metric_selector
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
      Model Algorithm Type: models.model_metric_selector
    row: 41
    col: 12
    width: 12
    height: 8
  - title: Models Containing Sensitive Information
    name: Models Containing Sensitive Information
    model: hca_ai_platform
    explore: models
    type: looker_column
    fields: [models.dynamic_timeframe, models.count, models.is_sensitive_data]
    pivots: [models.is_sensitive_data]
    fill_fields: [models.is_sensitive_data]
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
      Model Algorithm Type: models.model_metric_selector
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
        <a style="padding: 5px 15px; border-top: solid 1px #4285F4; border-left: solid 1px #4285F4; border-right: solid 1px #4285F4; border-radius: 5px 5px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #eaf1fe;" href="https://hcahealthcarecorpnp.cloud.looker.com/dashboards/hca_ai_platform::example_dynamic_high_level_dashboard">
      High Level Dashboard</a>
        <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="https://hcahealthcarecorpnp.cloud.looker.com/dashboards/hca_ai_platform::example_dynamic_deep_dive_dashboard">Deep Dive Dashboard</a>
        <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="https://hcahealthcarecorpnp.cloud.looker.com/dashboards/hca_ai_platform::example_dynamic_comparison_dashboard">Comparison Dashboard</a>
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
  - name: Model Algorithm Type
    title: Model Algorithm Type
    type: field_filter
    default_value: classification
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: hca_ai_platform
    explore: models
    listens_to_filters: []
    field: models.model_metric_selector
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
