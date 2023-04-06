view: invoice_data {
  sql_table_name: `decisive-triode-363515.offshore.invoice_data`
    ;;

  dimension: approval_employee {
    type: string
    sql: ${TABLE}.Approval_Employee ;;
  }

  dimension: currency_id {
    type: string
    sql: ${TABLE}.Currency_ID ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.Department ;;
  }

  dimension: discount_decimal_ {
    type: number
    sql: ${TABLE}.Discount__ ;;
    # value_format: "%"
  }

  dimension: discount {
    type: number
    sql: ${discount_decimal_} ;;
    value_format: "$0%"
    value_format_name: percent_0
  }

  dimension_group: invoice {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Invoice_Date ;;
  }

  dimension: item_id {
    type: string
    sql: ${TABLE}.Item_ID ;;
  }

  dimension: item_quantity {
    type: number
    sql: ${TABLE}.Item_Quantity ;;
  }

  dimension: payment_term_days {
    type: number
    sql: ${TABLE}.Payment_Term_Days ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}.Unit_Price ;;
    value_format_name: usd
  }

  dimension: Discounted_SP {
    type: number
    sql: ${unit_price}-(${unit_price}*${discount_decimal_}) ;;
    value_format_name: usd
  }

  dimension: Actual_selling_price {
    type: number
    sql:  ${unit_price}*${item_quantity} ;;
    value_format_name: usd
  }

  measure: Average_selling_price{
    type:average
    sql: ${unit_price} ;;
    value_format_name: usd
  }

  measure: Maximun_selling_price {
    type: max
    sql: ${unit_price} ;;
    value_format_name: usd
  }

  measure: count {
    type: count
    drill_fields: [item_quantity, payment_term_days]
  }


  measure: Discount {
    type: sum
    sql: ${discount} ;;
    value_format: "0\%"
  }

  measure: Sum_of_Actual_SP {
    type: sum
    sql: ${Actual_selling_price} ;;
    value_format_name: usd
  }

  # measure: conversion_rate {
  #   type: sum
  #   sql:  ${invoice_data_exchange_rates.exchange_rate}*${Actual_selling_price} ;;
  # }
}
