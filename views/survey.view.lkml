view: survey {
  sql_table_name: app_4810994.survey ;;
  drill_fields: [surveyid]

  dimension: surveyid {
    primary_key: yes
    type: number
    sql: ${TABLE}."surveyid" ;;
  }

  dimension_group: closedatetime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."closedatetime" ;;
  }

  dimension_group: createddatetime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."createddatetime" ;;
  }

  dimension_group: opendatetime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."opendatetime" ;;
  }

  dimension: state {
    type: number
    sql: ${TABLE}."state" ;;
  }

  dimension: surveyguidid {
    type: string
    sql: ${TABLE}."surveyguidid" ;;
  }

  dimension: surveyname {
    type: string
    sql: ${TABLE}."surveyname" ;;
  }

  dimension_group: syncdatetime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."syncdatetime" ;;
  }

  dimension: transactionnumber {
    type: number
    sql: ${TABLE}."transactionnumber" ;;
  }

  measure: count {
    type: count
    drill_fields: [surveyid, surveyname, grid.count, question.count]
  }
}
