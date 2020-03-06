view: answer {
  sql_table_name: app_4810994.answer ;;
  drill_fields: [answerid]

  dimension: answerid {
    primary_key: yes
    type: number
    sql: ${TABLE}."answerid" ;;
  }

  dimension: answerscalevalue {
    type: number
    sql: ${TABLE}."answerscalevalue" ;;
  }

  dimension: answertext {
    type: string
    sql: ${TABLE}."answertext" ;;
  }

  dimension: answertype {
    type: number
    sql: ${TABLE}."answertype" ;;
  }

  dimension: orderinparent {
    type: number
    sql: ${TABLE}."orderinparent" ;;
  }

  dimension: questionid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}."questionid" ;;
  }

  dimension: state {
    type: number
    sql: ${TABLE}."state" ;;
  }

  measure: count {
    type: count
    drill_fields: [answerid, question.questionname, question.questionid]
  }
}
