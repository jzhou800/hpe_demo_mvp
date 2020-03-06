connection: "@{connection_name}"
label: "Patient Experience MVP"
include: "/views/**/*.view"

datagroup: hpe_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: hpe_default_datagroup

explore: hospital_rating_mvp {
  view_name: hpe_demo_mvp

  join: nps_demo_mvp {
    type: inner
    sql_on: ${nps_demo_mvp.answerid} = @{hospital_rating_column} AND ${nps_demo_mvp.questionid} = @{hospital_rating_id};;
    relationship: one_to_one
  }
}
