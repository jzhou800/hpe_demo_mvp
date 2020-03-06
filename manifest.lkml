project_name: "hpe_demo_mvp"

constant: app_name {
  value: "app_4810994"
}

constant: hpe_survey_id {
  value: "627124990"
}

constant: hospital_rating_id {
  value: "2287226990"
}

constant: schema_name {
  value: "@{app_name}"
}

constant: connection_name {
  value: "@{app_name}"
}

constant: hpe_survey_table {
  value: "s_@{hpe_survey_id}"
}

constant: hospital_rating_column {
  value: "q_@{hospital_rating_id}"
}
