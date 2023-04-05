view: energy_consumption_monthly {
  sql_table_name: `decisive-triode-363515.offshore.energy_consumption_monthly`
    ;;

  dimension: actual_cost {
    type: number
    sql: ${TABLE}.actual_cost ;;
  }

  dimension: actual_cost_present_year {
    type: number
    sql: ${TABLE}.actual_cost_present_year ;;
  }

  dimension: actual_cost_previous_year {
    type: number
    sql: ${TABLE}.actual_cost_previous_year ;;
  }

  dimension: budget_cost {
    type: number
    sql: ${TABLE}.budget_cost ;;
  }

  dimension: cost_difference_budget_and_actual {
    type: string
    sql: ${TABLE}.cost_difference_budget_and_actual ;;
  }

  dimension: cost_difference_previous_and_present_actual {
    type: number
    sql: ${TABLE}.cost_difference_previous_and_present_actual ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.created_date ;;
  }

  dimension: district {
    type: number
    sql: ${TABLE}.district ;;
  }

  dimension: mm_cost {
    type: number
    sql: ${TABLE}.Mm_Cost ;;
  }

  dimension: mon {
    type: string
    sql: ${TABLE}.Mon ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.Month ;;
  }

  dimension: percent_difference {
    type: number
    sql: ${TABLE}.percent_difference ;;
  }

  dimension: percent_of_budget {
    type: number
    sql: ${TABLE}.percent_of_budget ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension_group: report {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.report_date ;;
  }

  dimension: site {
    type: string
    sql: ${TABLE}.site ;;
  }

  dimension: sort {
    type: number
    sql: ${TABLE}.Sort ;;
  }

  dimension: ytd_actual_cost {
    type: number
    sql: ${TABLE}.ytd_actual_cost ;;
  }

  dimension: ytd_actual_cost_present_year {
    type: number
    sql: ${TABLE}.ytd_actual_cost_present_year ;;
  }

  dimension: ytd_actual_cost_previous_year {
    type: number
    sql: ${TABLE}.ytd_actual_cost_previous_year ;;
  }

  dimension: ytd_budget_cost {
    type: number
    sql: ${TABLE}.ytd_budget_cost ;;
  }

  dimension: ytd_cost_difference {
    type: string
    sql: ${TABLE}.ytd_cost_difference ;;
  }

  dimension: ytd_cumulative_cost_difference {
    type: string
    sql: ${TABLE}.ytd_cumulative_cost_difference ;;
  }

  dimension: ytd_cumulative_percent_of_budget {
    type: number
    sql: ${TABLE}.ytd_cumulative_percent_of_budget ;;
  }

  dimension: ytd_percent_difference {
    type: number
    sql: ${TABLE}.ytd_percent_difference ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: Cost_difference{
    type: sum
    sql: ${cost_difference_previous_and_present_actual} ;;
    value_format_name: usd
  }
}
