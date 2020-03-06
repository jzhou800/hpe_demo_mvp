view: nps_demo_mvp {
  sql_table_name:  @{schema_name}.answer ;;

  dimension: primary_key {
    hidden: yes
    primary_key: yes
    sql: CONCAT(${TABLE}.questionid, ${TABLE}.sanswerid) ;;
  }

  dimension: questionid {
    type: number
    value_format_name: id
    sql: ${TABLE}.questionid ;;
  }

  dimension: answerid {
    type: number
    value_format_name: id
    sql: ${TABLE}.answerid ;;
  }

  dimension: response {
    type: string
    value_format_name: id
    sql: ${TABLE}.answertext ;;
  }

  dimension: scale_value {
    type: number
    value_format_name: id
    sql: ${TABLE}.answerscalevalue ;;
  }

  measure: count {
    type: count
  }

# NPS

  dimension: detractor {
    group_label: "Catetory"
    type:  number
    sql: case when ${scale_value}::integer <= 7 then 1 else 0 end ;;
  }

  dimension: passive {
    group_label: "Catetory"
    type:  number
    sql: case when ${scale_value}::integer in (8,9) then 1 else 0 end ;;
  }

  dimension: promoter {
    group_label: "Catetory"
    type:  number
    sql: case when ${scale_value}::integer in (10,11) then 1 else 0 end ;;
  }

  measure: total_promoters {
    label: "# of Promoters"
    type:  sum
    sql:  ${promoter} ;;
  }

  measure: total_detractors {
    label: "# of Detractors"
    type:  sum
    sql:  ${detractor} ;;
  }

  measure: total_passives {
    label: "# of Passives"
    type:  sum
    sql:  ${passive} ;;
  }

  measure: score {
    label: "NPS Score"
    type:  number
    value_format: "0"
    sql: 100.0 * (${total_promoters} - ${total_detractors})/(${total_promoters} + ${total_passives} + ${total_detractors}) ;;
  }
}
