view: log_reg_model_census {
  sql_table_name: `decisive-triode-363515.sprint_3_4.log_reg_model_census`
    ;;

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: dataframe {
    type: string
    sql: ${TABLE}.dataframe ;;
  }

  dimension: education_num {
    type: number
    sql: ${TABLE}.education_num ;;
  }

  dimension: hours_per_week {
    type: number
    sql: ${TABLE}.hours_per_week ;;
  }

  dimension: income_bracket {
    type: string
    sql: ${TABLE}.income_bracket ;;
  }

  dimension: marital_status {
    type: string
    sql: ${TABLE}.marital_status ;;
  }

  dimension: occupation {
    type: string
    sql: ${TABLE}.occupation ;;
  }

  dimension: workclass {
    type: string
    sql: ${TABLE}.workclass ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
