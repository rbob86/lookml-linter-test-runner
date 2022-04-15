- dashboard: test_pdf
  title: Test PDF
  layout: newspaper
  preferred_viewer: dashboards
  description: ''
  elements:
  - title: Test PDF
    name: Test PDF
    model: system__activity
    explore: history
    type: looker_grid
    fields: [history.count, history.id]
    sorts: [history.count desc]
    limit: 500
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    series_types: {}
    listen:
      Status: history.status
    row: 0
    col: 0
    width: 8
    height: 6
  filters:
  - name: Status
    title: Status
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: inline
      options:
      - complete
      - error
    model: system__activity
    explore: history
    listens_to_filters: []
    field: history.status
