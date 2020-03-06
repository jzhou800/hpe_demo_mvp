view: gridquestion {
  sql_table_name: app_4810994.gridquestion ;;

  dimension: gridid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}."gridid" ;;
  }

  dimension: questionid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}."questionid" ;;
  }

  measure: count {
    type: count
    drill_fields: [question.questionname, question.questionid, grid.gridid, grid.gridname]
  }
}
