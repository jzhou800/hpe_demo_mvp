view: grid {
  sql_table_name: app_4810994.grid ;;
  drill_fields: [gridid]

  dimension: gridid {
    primary_key: yes
    type: number
    sql: ${TABLE}."gridid" ;;
  }

  dimension: gridname {
    type: string
    sql: ${TABLE}."gridname" ;;
  }

  dimension: gridtext {
    type: string
    sql: ${TABLE}."gridtext" ;;
  }

  dimension: gridtype {
    type: number
    sql: ${TABLE}."gridtype" ;;
  }

  dimension: state {
    type: number
    sql: ${TABLE}."state" ;;
  }

  dimension: surveyid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}."surveyid" ;;
  }

  measure: count {
    type: count
    drill_fields: [gridid, gridname, survey.surveyname, survey.surveyid, gridquestion.count]
  }
}
