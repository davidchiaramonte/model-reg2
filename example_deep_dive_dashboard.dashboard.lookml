---
- dashboard: example_deep_dive_dashboard
  title: Example Deep Dive Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: SNFt2Mnm1KYn8207gYmv5G
  elements:
  - title: Example Deep Dive Dashboard
    name: Example Deep Dive Dashboard
    model: hca_ai_platform
    explore: models
    type: looker_single_record
    fields: [models.creation_timestamp_date, models.model_name, models.model_semantic_version,
      models.model_gcp_project_id, models.performance_metrics_summary, models.model_status,
      models.use_case, models.model_version_description]
    sorts: [models.creation_timestamp_date desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
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
    defaults_version: 1
    title_hidden: true
    listen:
      GCP Project: models.model_gcp_project_id
      Model Name: models.model_name
      Model Semantic Version: models.model_semantic_version
    row: 4
    col: 0
    width: 8
    height: 8
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Model Information"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 2
    col: 0
    width: 24
    height: 2
  - title: Avg Precision
    name: Avg Precision
    model: hca_ai_platform
    explore: models
    type: single_value
    fields: [models.dynamic_timeframe, models.average_precision]
    filters:
      models.timeframe_selector: day
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
      Model Semantic Version: models.model_semantic_version
      Model Name: models.model_name
    row: 4
    col: 8
    width: 4
    height: 4
  - title: Avg Recall
    name: Avg Recall
    model: hca_ai_platform
    explore: models
    type: single_value
    fields: [models.dynamic_timeframe, models.average_recall]
    filters:
      models.timeframe_selector: day
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
      Model Semantic Version: models.model_semantic_version
      Model Name: models.model_name
    row: 4
    col: 12
    width: 4
    height: 4
  - title: Avg Accuracy
    name: Avg Accuracy
    model: hca_ai_platform
    explore: models
    type: single_value
    fields: [models.dynamic_timeframe, models.average_accuracy]
    filters:
      models.timeframe_selector: day
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
      Model Semantic Version: models.model_semantic_version
      Model Name: models.model_name
    row: 4
    col: 16
    width: 4
    height: 4
  - title: Avg F1 Score
    name: Avg F1 Score
    model: hca_ai_platform
    explore: models
    type: single_value
    fields: [models.dynamic_timeframe, models.average_f1]
    filters:
      models.timeframe_selector: day
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
      Model Semantic Version: models.model_semantic_version
      Model Name: models.model_name
    row: 4
    col: 20
    width: 4
    height: 4
  - title: Avg R-Squared
    name: Avg R-Squared
    model: hca_ai_platform
    explore: models
    type: single_value
    fields: [models.dynamic_timeframe, models.average_r_squared]
    filters:
      models.timeframe_selector: day
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
      Model Semantic Version: models.model_semantic_version
      Model Name: models.model_name
    row: 8
    col: 8
    width: 4
    height: 4
  - title: Avg Log Loss
    name: Avg Log Loss
    model: hca_ai_platform
    explore: models
    type: single_value
    fields: [models.dynamic_timeframe, models.average_log_loss]
    filters:
      models.timeframe_selector: day
      models.domain: ''
      most_recent_update.model_name: ''
      most_recent_update.training_data_uri: ''
      most_recent_update.model_status: ''
      models.creation_timestamp_date: 30 days
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
      Model Semantic Version: models.model_semantic_version
      Model Name: models.model_name
    row: 8
    col: 12
    width: 4
    height: 4
  - title: Avg RMSE
    name: Avg RMSE
    model: hca_ai_platform
    explore: models
    type: single_value
    fields: [models.dynamic_timeframe, models.average_rmse]
    filters:
      models.timeframe_selector: day
      models.domain: ''
      most_recent_update.model_name: ''
      most_recent_update.training_data_uri: ''
      most_recent_update.model_status: ''
      models.creation_timestamp_date: 30 days
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
      Model Semantic Version: models.model_semantic_version
      Model Name: models.model_name
    row: 8
    col: 16
    width: 4
    height: 4
  - title: Avg MAE
    name: Avg MAE
    model: hca_ai_platform
    explore: models
    type: single_value
    fields: [models.dynamic_timeframe, models.average_mae]
    filters:
      models.timeframe_selector: day
      models.domain: ''
      most_recent_update.model_name: ''
      most_recent_update.training_data_uri: ''
      most_recent_update.model_status: ''
      models.creation_timestamp_date: 30 days
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
      Model Semantic Version: models.model_semantic_version
      Model Name: models.model_name
    row: 8
    col: 20
    width: 4
    height: 4
  - title: Service Now Ticket
    name: Service Now Ticket
    model: hca_ai_platform
    explore: models
    type: single_value
    fields: [models.service_now_ticket_id]
    sorts: [models.service_now_ticket_id]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    listen:
      GCP Project: models.model_gcp_project_id
      Model Semantic Version: models.model_semantic_version
      Model Name: models.model_name
    row: 12
    col: 11
    width: 5
    height: 3
  - title: Training Data URI
    name: Training Data URI
    model: hca_ai_platform
    explore: models
    type: single_value
    fields: [models.training_data_uri]
    sorts: [models.training_data_uri]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    listen:
      GCP Project: models.model_gcp_project_id
      Model Semantic Version: models.model_semantic_version
      Model Name: models.model_name
    row: 12
    col: 0
    width: 11
    height: 3
  - title: Link to Vertex Job
    name: Link to Vertex Job
    model: hca_ai_platform
    explore: models
    type: single_value
    fields: [models.link_to_vertex_job]
    sorts: [models.link_to_vertex_job]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    listen:
      GCP Project: models.model_gcp_project_id
      Model Semantic Version: models.model_semantic_version
      Model Name: models.model_name
    row: 12
    col: 20
    width: 4
    height: 3
  - title: Model History
    name: Model History
    model: hca_ai_platform
    explore: models
    type: looker_grid
    fields: [models.model_name, models.model_semantic_version, models.creation_timestamp_date,
      models.model_gcp_project_id, models.performance_metrics_summary]
    sorts: [models.model_name, models.model_semantic_version desc, models.creation_timestamp_date
        desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
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
    defaults_version: 1
    listen:
      GCP Project: models.model_gcp_project_id
      Model Semantic Version: models.model_semantic_version
      Model Name: models.model_name
    row: 17
    col: 0
    width: 24
    height: 6
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Model History"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 15
    col: 0
    width: 24
    height: 2
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="border-bottom: solid 1px #4285F4;">
      <nav style="font-size: 15px; padding: 5px 10px 0 10px; height: 60px">
        <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="https://hcahealthcarecorpnp.cloud.looker.com/dashboards/hca_ai_platform::example_high_level_dashboard">
      High Level Dashboard</a>
        <a style="padding: 5px 15px; border-top: solid 1px #4285F4; border-left: solid 1px #4285F4; border-right: solid 1px #4285F4; border-radius: 5px 5px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #eaf1fe;" href="https://hcahealthcarecorpnp.cloud.looker.com/dashboards/hca_ai_platform::example_deep_dive_dashboard">Deep Dive Dashboard</a>
        <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="https://hcahealthcarecorpnp.cloud.looker.com/dashboards/hca_ai_platform::example_comparison_dashboard">Comparison Dashboard</a>
      </nav>
      </div>
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Link to Model Monitoring
    name: Link to Model Monitoring
    model: hca_ai_platform
    explore: models
    type: single_value
    fields: [models.link_to_vertex_monitoring]
    sorts: [models.link_to_vertex_monitoring]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    listen:
      GCP Project: models.model_gcp_project_id
      Model Semantic Version: models.model_semantic_version
      Model Name: models.model_name
    row: 12
    col: 16
    width: 4
    height: 3
  filters:
  - name: GCP Project
    title: GCP Project
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: true
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
    field: models.model_name
  - name: Model Semantic Version
    title: Model Semantic Version
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: hca_ai_platform
    explore: models
    listens_to_filters: [GCP Project, Model Name]
    field: models.model_semantic_version
