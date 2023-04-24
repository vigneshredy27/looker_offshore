view: survey_report {
  sql_table_name: `decisive-triode-363515.sprint_3_4.survey_report`
    ;;

  dimension: answer {
    type: string
    sql: ${TABLE}.Answer ;;
  }

  dimension: survey_count {
    type: number
    sql: ${TABLE}.Count ;;
  }

  dimension: percentage {
    type: number
    sql: ${TABLE}.Percentage ;;
    value_format: "0.00%"
  }

  dimension: question {
    type: string
    sql: ${TABLE}.Question ;;
  }

  dimension: segment_description {
    type: string
    sql: ${TABLE}.Segment_Description ;;
  }

  dimension: segment_type {
    type: string
    sql: ${TABLE}.Segment_Type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: Total_Responses_Count {
    type: sum
    sql: ${survey_count} ;;
  }

  measure: Average_Response_Percentage {
    type: average
    sql: ${percentage} ;;
    value_format: "0.00%"
  }
}
