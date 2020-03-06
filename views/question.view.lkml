view: question {
  sql_table_name: app_4810994.question ;;
  drill_fields: [questionid]

  dimension: questionid {
    primary_key: yes
    type: number
    sql: ${TABLE}."questionid" ;;
  }

  dimension: orderinparent {
    type: number
    sql: ${TABLE}."orderinparent" ;;
  }

  dimension: questionname {
    type: string
    sql: ${TABLE}."questionname" ;;
  }

  dimension: questiontext {
    type: string
    sql: ${TABLE}."questiontext" ;;
  }

  dimension: questiontype {
    type: number
    sql: ${TABLE}."questiontype" ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      questionid,
      questionname,
      survey.surveyname,
      survey.surveyid,
      answer.count,
      gridquestion.count
    ]
  }
}
