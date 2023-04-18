view: calls {
  sql_table_name: `decisive-triode-363515.telecom.calls`
    ;;

  dimension: agentname {
    type: string
    sql: ${TABLE}.AGENTNAME ;;
  }

  dimension: avgloggedintime {
    type: number
    sql: ${TABLE}.AVGLOGGEDINTIME ;;
  }

  dimension: callshandled {
    type: number
    sql: ${TABLE}.CALLSHANDLED ;;
  }

  dimension_group: load {
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
    sql: ${TABLE}.LOAD_DATE ;;
  }

  dimension: total_cals {
    type: number
    sql: ${TABLE}.Total_cals ;;
  }

  dimension: totalloggedintime {
    type: number
    sql: ${TABLE}.TOTALLOGGEDINTIME ;;
  }

  dimension: avg_hours {
    type: number
    sql: (${totalloggedintime})/60 ;;
  }

  measure: Average_Hours_Logged {
    type: average
    sql: ${avg_hours} ;;
    value_format: "0.00\" Hours\""
  }

  measure: count {
    type: count
    drill_fields: [agentname]
  }

  measure: Average_Monthly_Calls_Per_Tech {
    type: average
    sql: ${total_cals} ;;
    value_format: "0.00"
  }

  measure: Month {
    type: date_month_name
    sql: ${load_month} ;;
  }

  dimension: MonthName {
    type: date_month_name
    sql: ${TABLE}.LOAD_DATE ;;
  }
}
