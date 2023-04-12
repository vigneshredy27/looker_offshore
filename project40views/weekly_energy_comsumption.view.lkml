view: weekly_energy_comsumption {
  sql_table_name: `decisive-triode-363515.offshore.weekly_energy_comsumption`
    ;;

  dimension: actual_kwh {
    type: number
    sql: ${TABLE}.actual_kwh ;;
    value_format: "0.000,,\" MKWh\""
  }

  dimension: actual_kwh_cwt_previous_year {
    type: number
    sql: ${TABLE}.actual_kwh_cwt_previous_year ;;
    value_format: "0.000,,\" MKWh\""
  }

  dimension: actual_kwh_present_year {
    type: number
    sql: ${TABLE}.actual_kwh_present_year ;;
    value_format: "0.000,,\" MKWh\""
  }

  dimension: actual_kwh_previous_year {
    type: number
    sql: ${TABLE}.actual_kwh_previous_year ;;
    value_format: "0.000,,\" MKWh\""
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: budget_kwh {
    type: number
    sql: ${TABLE}.budget_kwh ;;
    value_format: "0.000,,\" MKWh\""
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
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

  dimension: mm_kwh {
    type: number
    sql: ${TABLE}.mm_kwh ;;
  }

  dimension: mon {
    type: string
    sql: ${TABLE}.Mon ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.Month ;;
  }

  dimension: percent_difference_actual_previous_and_present {
    type: number
    sql: ${TABLE}.percent_difference_actual_previous_and_present ;;
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
    sql: ${TABLE}.sort ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: target_pounds_present_year {
    type: number
    sql: ${TABLE}.target_pounds_present_year ;;
  }

  dimension: usag_difference {
    type: number
    sql: ${TABLE}.usag_difference ;;
    value_format: "0.000,,\" MKWh\""
  }

  dimension: usage_difference_actual_previous_and_present {
    type: number
    sql: ${TABLE}.usage_difference_actual_previous_and_present ;;
    value_format: "0.000,,\" MKWh\""
  }

  dimension: weeknum {
    type: number
    sql: ${TABLE}.Weeknum ;;
  }

  dimension: ytd_actual_kwh {
    type: number
    sql: ${TABLE}.ytd_actual_kwh ;;
    value_format: "0.000,,\" MKWh\""
  }

  dimension: ytd_actual_kwh_present_year {
    type: number
    sql: ${TABLE}.ytd_actual_kwh_present_year ;;
    value_format: "0.000,,\" MKWh\""
  }

  dimension: ytd_actual_kwh_previous_year {
    type: number
    sql: ${TABLE}.ytd_actual_kwh_previous_year ;;
    value_format: "0.000,,\" MKWh\""
  }

  dimension: ytd_budget_kwh {
    type: number
    sql: ${TABLE}.ytd_budget_kwh ;;
    value_format: "0.000,,\" MKWh\""
  }

  dimension: ytd_cumulative_usage_difference {
    type: number
    sql: ${TABLE}.ytd_cumulative_usage_difference ;;
    value_format: "0.000,,\" MKWh\""
  }

  dimension: ytd_percent_difference_actual_previous_and_present {
    type: number
    sql: ${TABLE}.ytd_percent_difference_actual_previous_and_present ;;
  }

  dimension: ytd_percent_of_budget {
    type: number
    sql: ${TABLE}.ytd_percent_of_budget ;;
  }

  dimension: ytd_usage_difference_actual_previous_and_present {
    type: number
    sql: ${TABLE}.ytd_usage_difference_actual_previous_and_present ;;
    value_format: "0.000,,\" MKWh\""
  }

  dimension: Remaining_KWh_Difference_Between_Allocated_Budget_From_Current_Year {
    type: number
    sql: ${budget_kwh}-${actual_kwh_present_year} ;;
    value_format: "0.000,,\" MKWh\""
  }

  dimension: Remaining_KWh_Difference_Between_Allocated_Budget_From_Previous_Year {
    type: number
    sql: ${budget_kwh}-${actual_kwh_previous_year} ;;
    value_format: "0.000,,\" MKWh\""
  }

  dimension: Remaining_KWh_Difference_Between_Allocated_Budget_YTD {
    type: number
    sql: ${ytd_budget_kwh} - ${ytd_actual_kwh} ;;
    value_format: "0.000,,\" MKWh\""
  }

  dimension: Remaining_KWh_Difference_Between_Allocated_Budget_YTD_Previous_Year {
    type: number
    sql: ${ytd_budget_kwh} - ${ytd_actual_kwh_previous_year} ;;
    value_format: "0.000,,\" MKWh\""
  }

  measure: Most_Economical_Consumption_YTD_Previous_Year {
    type: sum
    sql: ${Remaining_KWh_Difference_Between_Allocated_Budget_YTD_Previous_Year} ;;
    value_format: "0.000,,\" MKWh\""
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: Usage_Difference_From_Current_Year {
    type: sum
    sql: ${Remaining_KWh_Difference_Between_Allocated_Budget_From_Current_Year} ;;
    value_format: "0.000,,\" MKWh\""
  }

  measure: Usage_Difference_From_Previous_Year {
    type: sum
    sql: ${Remaining_KWh_Difference_Between_Allocated_Budget_From_Previous_Year} ;;
    value_format: "0.000,,\" MKWh\""
  }

  measure: Most_Economical_Consumption_YTD {
    type: sum
    sql: ${Remaining_KWh_Difference_Between_Allocated_Budget_YTD} ;;
    value_format: "0.000,,\" MKWh\""
  }

  # measure: Sum {
  #   type: sum
  #   sql: ${actual_kwh_difference} ;;
  # }

  measure: Total_usage_in_current_year {
    type: sum
    sql: ${actual_kwh_present_year} ;;
    value_format: "0.000,,\" MKWh\""
  }

  measure: Total_usage_in_previous_year {
    type: sum
    sql: ${actual_kwh_previous_year} ;;
    value_format: "0.000,,\" MKWh\""
  }

  measure: Average_usage_in_current_year {
    type: average
    sql: ${actual_kwh_present_year} ;;
    value_format: "0.000,,\" MKWh\""
  }

  measure: Average_usage_in_previous_year {
    type: average
    sql: ${actual_kwh_previous_year} ;;
    value_format: "0.000,,\" MKWh\""
  }


  measure: Avg_ytd_actual_kwh_present {
    type: average
    sql: ${ytd_actual_kwh_present_year} ;;
    value_format: "0.000,,\" MKWh\""
  }

  measure: Total_usage_YTD_current_year {
    type: sum
    sql: ${ytd_actual_kwh_present_year} ;;
    value_format: "0.000,,\" MKWh\""
  }

  measure: Total_usage_YTD_previous_year {
    type: average
    sql: ${ytd_actual_kwh_previous_year} ;;
    value_format: "0.000,,\" MKWh\""
  }

  measure: Total_budget {
    type: sum
    sql: ${budget_kwh} ;;
    value_format: "0.000,,\" MKWh\""
    label: "Total Allocated Energy Budget(kWh)"
    label_from_parameter: "kwh_format"
  }
  parameter: kwh_format {
    type: number
    default_value: "kWh"
  }
  # value_format: kwh_format {
  #   type: number
  #   units: "kWh"
  # }

  measure: sum_ytd_budget {
    type:  sum
    sql: ${ytd_budget_kwh} ;;
    value_format: "0.000,,\" MKWh\""
    label: "Total Allocated Energy Budget YTD(kWh)"
    label_from_parameter: "kwh_format"
  }
  # parameter: kwh_format {
  #   type: number
  #   default_value: "kWh"
  # }


  measure: avg_ytd_budget {
    type:  average
    sql: ${ytd_actual_kwh} ;;
    value_format: "0.000,,\" MKWh\""
    label: "Total Average Allocated Energy Budget(kWh)"
    label_from_parameter: "kwh_format"
  }
  # parameter: kwh_format {
  #   type: number
  #   default_value: "kWh"
  # }


  measure: sum_difference {
    type:  sum
    sql: ${ytd_usage_difference_actual_previous_and_present} ;;
    value_format: "0.000,,\" MKWh\""
  }

  measure: avg_difference {
    type:  average
    sql: ${ytd_percent_difference_actual_previous_and_present} ;;
    value_format: "0.000,,\" MKWh\""
  }


}
