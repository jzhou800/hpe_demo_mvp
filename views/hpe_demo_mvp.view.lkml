view: hpe_demo_mvp {
  sql_table_name: @{schema_name}.@{hpe_survey_table} ;;
  label: "Healthcare Patient Experience"

  dimension: response_id {
    primary_key: yes
    type: number
    value_format_name: id
    sql: ${TABLE}.responseid ;;
  }

  dimension: response_status {
    type: number
    value_format_name: id
    sql: ${TABLE}.responsestatus ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [date, week, month]
    sql: ${TABLE}.updateddatetime ;;
  }

  dimension: member_id {
    type: string
    sql: ${TABLE}.memberid ;;
  }

  dimension: hospital_rating {
    type: number
    value_format_name: id
    sql:${TABLE}.@{hospital_rating_column} ;;
  }

  measure: count {
    type: count
  }
}
