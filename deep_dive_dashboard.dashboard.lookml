---
- dashboard: deep_dive_dashboard
  title: Deep Dive Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 7NEdG2L3qmxrbNwf727CCG
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
      Model Algorithm Type: models.model_metric_selector
    row: 4
    col: 0
    width: 9
    height: 8
  - name: ''
    type: text
    title_text: ''
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
    fields: [models.dynamic_timeframe, models.dynamic_1]
    filters:
      models.timeframe_selector: day
      models.dynamic_1: NOT NULL
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
      Model Semantic Version: models.model_semantic_version
      Model Name: models.model_name
      Model Algorithm Type: models.model_metric_selector
    row: 4
    col: 9
    width: 5
    height: 4
  - title: Avg Recall
    name: Avg Recall
    model: hca_ai_platform
    explore: models
    type: single_value
    fields: [models.dynamic_timeframe, models.dynamic_2]
    filters:
      models.timeframe_selector: day
      models.dynamic_2: NOT NULL
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
      Model Semantic Version: models.model_semantic_version
      Model Name: models.model_name
      Model Algorithm Type: models.model_metric_selector
    row: 4
    col: 14
    width: 5
    height: 4
  - title: Avg Accuracy
    name: Avg Accuracy
    model: hca_ai_platform
    explore: models
    type: single_value
    fields: [models.dynamic_timeframe, models.dynamic_3]
    filters:
      models.timeframe_selector: day
      models.dynamic_3: NOT NULL
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
      Model Semantic Version: models.model_semantic_version
      Model Name: models.model_name
      Model Algorithm Type: models.model_metric_selector
    row: 4
    col: 19
    width: 5
    height: 4
  - title: Avg R-Squared
    name: Avg R-Squared
    model: hca_ai_platform
    explore: models
    type: single_value
    fields: [models.dynamic_timeframe, models.dynamic_4]
    filters:
      models.timeframe_selector: day
      models.dynamic_4: NOT NULL
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
      Model Semantic Version: models.model_semantic_version
      Model Name: models.model_name
      Model Algorithm Type: models.model_metric_selector
    row: 8
    col: 9
    width: 5
    height: 4
  - title: Avg Log Loss
    name: Avg Log Loss
    model: hca_ai_platform
    explore: models
    type: single_value
    fields: [models.dynamic_timeframe, models.dynamic_5]
    filters:
      models.timeframe_selector: day
      models.dynamic_5: NOT NULL
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
      Model Semantic Version: models.model_semantic_version
      Model Name: models.model_name
      Model Algorithm Type: models.model_metric_selector
    row: 8
    col: 14
    width: 5
    height: 4
  - title: Avg RMSE
    name: Avg RMSE
    model: hca_ai_platform
    explore: models
    type: single_value
    fields: [models.dynamic_timeframe, models.dynamic_6]
    filters:
      models.timeframe_selector: day
      models.dynamic_6: NOT NULL
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
    single_value_title: Avg RMSE
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
      Model Semantic Version: models.model_semantic_version
      Model Name: models.model_name
      Model Algorithm Type: models.model_metric_selector
    row: 8
    col: 19
    width: 5
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
      Model Algorithm Type: models.model_metric_selector
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
      Model Algorithm Type: models.model_metric_selector
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
      Model Algorithm Type: models.model_metric_selector
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
      Model Algorithm Type: models.model_metric_selector
    row: 17
    col: 0
    width: 24
    height: 6
  - name: " (2)"
    type: text
    title_text: ''
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
        <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="https://hcahealthcarecorpnp.cloud.looker.com/dashboards/hca_ai_platform::example_dynamic_high_level_dashboard">
      High Level Dashboard</a>
        <a style="padding: 5px 15px; border-top: solid 1px #4285F4; border-left: solid 1px #4285F4; border-right: solid 1px #4285F4; border-radius: 5px 5px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #eaf1fe;" href="https://hcahealthcarecorpnp.cloud.looker.com/dashboards/hca_ai_platform::example_dynamic_deep_dive_dashboard">Deep Dive Dashboard</a>
        <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="https://hcahealthcarecorpnp.cloud.looker.com/dashboards/hca_ai_platform::example_dynamic_comparison_dashboard">Comparison Dashboard</a>
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
      Model Algorithm Type: models.model_metric_selector
    row: 12
    col: 16
    width: 4
    height: 3
  - title: Challenger Models
    name: Challenger Models
    model: hca_ai_platform
    explore: models
    type: looker_grid
    fields: [most_recent_update.model_name, most_recent_update.model_gcp_project_id,
      most_recent_update.performance_metrics_summary, most_recent_update.deployment_status]
    filters:
      most_recent_update.publish_status: challenger
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
      Model Name: models.model_name
      Model Semantic Version: models.model_semantic_version
      Model Algorithm Type: models.model_metric_selector
    row: 23
    col: 0
    width: 24
    height: 6
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
