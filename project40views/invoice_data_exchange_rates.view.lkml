view: invoice_data_exchange_rates {
  sql_table_name: `decisive-triode-363515.offshore.invoice_data_exchange_rates`
    ;;

  dimension: currency_id {
    type: string
    sql: ${TABLE}.Currency_ID ;;
  }

  dimension: exchange_rate {
    type: string
    sql: ${TABLE}.Exchange_Rate ;;
  }

  dimension: exchange_short_code {
    type: string
    sql: ${TABLE}.Exchange_Short_Code ;;
  }

  dimension: rate {
    type: number
    sql: ${TABLE}.Rate ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
