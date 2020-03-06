view: s_627124990 {
  sql_table_name: app_4810994.s_627124990 ;;

  dimension_group: completeddatetime {
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
    sql: ${TABLE}."completeddatetime" ;;
  }

  dimension: datasettype {
    type: number
    sql: ${TABLE}."datasettype" ;;
  }

  dimension: memberid {
    type: string
    sql: ${TABLE}."memberid" ;;
  }

  dimension: q_2287198990 {
    type: number
    sql: ${TABLE}."q_2287198990" ;;
  }

  dimension: q_2287202990 {
    type: number
    sql: ${TABLE}."q_2287202990" ;;
  }

  dimension: q_2287204990 {
    type: number
    sql: ${TABLE}."q_2287204990" ;;
  }

  dimension: q_2287206990 {
    type: number
    sql: ${TABLE}."q_2287206990" ;;
  }

  dimension: q_2287208990 {
    type: number
    sql: ${TABLE}."q_2287208990" ;;
  }

  dimension: q_2287211990 {
    type: number
    sql: ${TABLE}."q_2287211990" ;;
  }

  dimension: q_2287214990 {
    type: number
    sql: ${TABLE}."q_2287214990" ;;
  }

  dimension: q_2287216990 {
    type: string
    sql: ${TABLE}."q_2287216990" ;;
  }

  dimension: q_2287219990 {
    type: number
    sql: ${TABLE}."q_2287219990" ;;
  }

  dimension: q_2287222990 {
    type: number
    sql: ${TABLE}."q_2287222990" ;;
  }

  dimension: q_2287224990 {
    type: string
    sql: ${TABLE}."q_2287224990" ;;
  }

  dimension: q_2287226990 {
    type: number
    sql: ${TABLE}."q_2287226990" ;;
  }

  dimension: q_2287229990 {
    type: number
    sql: ${TABLE}."q_2287229990" ;;
  }

  dimension: q_2287231990 {
    type: string
    sql: ${TABLE}."q_2287231990" ;;
  }

  dimension: q_2287234990 {
    type: number
    sql: ${TABLE}."q_2287234990" ;;
  }

  dimension: q_2287235990 {
    type: number
    sql: ${TABLE}."q_2287235990" ;;
  }

  dimension: q_2287236990 {
    type: number
    sql: ${TABLE}."q_2287236990" ;;
  }

  dimension: q_2287237990 {
    type: number
    sql: ${TABLE}."q_2287237990" ;;
  }

  dimension: q_2287238990 {
    type: number
    sql: ${TABLE}."q_2287238990" ;;
  }

  dimension: q_2287239990 {
    type: number
    sql: ${TABLE}."q_2287239990" ;;
  }

  dimension: q_2287240990 {
    type: number
    sql: ${TABLE}."q_2287240990" ;;
  }

  dimension: q_2287241990 {
    type: number
    sql: ${TABLE}."q_2287241990" ;;
  }

  dimension: q_2287242990 {
    type: number
    sql: ${TABLE}."q_2287242990" ;;
  }

  dimension: q_2287243990 {
    type: number
    sql: ${TABLE}."q_2287243990" ;;
  }

  dimension: q_2287244990 {
    type: number
    sql: ${TABLE}."q_2287244990" ;;
  }

  dimension: q_2287245990 {
    type: number
    sql: ${TABLE}."q_2287245990" ;;
  }

  dimension: q_2287246990 {
    type: number
    sql: ${TABLE}."q_2287246990" ;;
  }

  dimension: q_2287249990 {
    type: number
    sql: ${TABLE}."q_2287249990" ;;
  }

  dimension: q_2287250990 {
    type: number
    sql: ${TABLE}."q_2287250990" ;;
  }

  dimension: q_2287251990 {
    type: number
    sql: ${TABLE}."q_2287251990" ;;
  }

  dimension: q_2287252990 {
    type: number
    sql: ${TABLE}."q_2287252990" ;;
  }

  dimension: q_2287253990 {
    type: number
    sql: ${TABLE}."q_2287253990" ;;
  }

  dimension: q_2287255990 {
    type: string
    sql: ${TABLE}."q_2287255990" ;;
  }

  dimension: q_2287256990 {
    type: number
    sql: ${TABLE}."q_2287256990" ;;
  }

  dimension: q_2287258990 {
    type: number
    sql: ${TABLE}."q_2287258990" ;;
  }

  dimension: q_2287260990 {
    type: string
    sql: ${TABLE}."q_2287260990" ;;
  }

  dimension: q_2287262990 {
    type: number
    sql: ${TABLE}."q_2287262990" ;;
  }

  dimension: q_2287263990 {
    type: number
    sql: ${TABLE}."q_2287263990" ;;
  }

  dimension: responseid {
    type: number
    value_format_name: id
    sql: ${TABLE}."responseid" ;;
  }

  dimension: responsestatus {
    type: number
    sql: ${TABLE}."responsestatus" ;;
  }

  dimension_group: starteddatetime {
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
    sql: ${TABLE}."starteddatetime" ;;
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

  dimension_group: updateddatetime {
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
    sql: ${TABLE}."updateddatetime" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
