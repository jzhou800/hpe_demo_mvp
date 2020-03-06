view: activity {
  sql_table_name: app_4810994.activity ;;
  drill_fields: [activityid]

  dimension: activityid {
    primary_key: yes
    type: string
    sql: ${TABLE}."activityid" ;;
  }

  dimension: alternateid {
    type: string
    sql: ${TABLE}."alternateid" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  measure: count {
    type: count
    drill_fields: [activityid, name]
  }
}
