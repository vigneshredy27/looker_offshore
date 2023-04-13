view: margin {
  sql_table_name: `decisive-triode-363515.offshore.margin`
    ;;

  dimension: margin {
    type: string
    sql: ${TABLE}.margin ;;
  }

  dimension: runs {
    type: number
    sql: ${TABLE}.runs ;;
  }

  dimension: wickets {
    type: number
    sql: ${TABLE}.wickets ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: Total_Runs {
    type: sum
    sql: ${runs} ;;
  }

  measure: Average_Runs {
    type: average
    sql: ${runs} ;;
    value_format: "0.00"
  }

  measure: Total_Wickets {
    type: sum
    sql: ${wickets} ;;
  }

  measure: Average_Wickets {
    type: average
    sql: ${wickets} ;;
    value_format: "0.00"
  }
}
