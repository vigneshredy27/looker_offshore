view: sales {
  sql_table_name: `decisive-triode-363515.vlookerbq.sales`
    ;;

  dimension: addressline1 {
    type: string
    sql: ${TABLE}.ADDRESSLINE1 ;;
  }

  dimension: addressline2 {
    type: string
    sql: ${TABLE}.ADDRESSLINE2 ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.CITY ;;
  }

  measure: group_by_city{
    type: count_distinct
    sql: ${city} ;;
  }

  dimension: contactfirstname {
    type: string
    sql: ${TABLE}.CONTACTFIRSTNAME ;;
  }

  dimension: contactlastname {
    type: string
    sql: ${TABLE}.CONTACTLASTNAME ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.COUNTRY ;;
  }

  dimension: customername {
    type: string
    sql: ${TABLE}.CUSTOMERNAME ;;
  }

  dimension: dealsize {
    type: string
    sql: ${TABLE}.DEALSIZE ;;
  }

  measure: total_deal_size {
    type: count_distinct
    sql: ${dealsize} ;;
  }

  dimension: month_id {
    type: number
    sql: ${TABLE}.MONTH_ID ;;
  }

  dimension: msrp {
    type: number
    sql: ${TABLE}.MSRP ;;
  }

  measure: total_msrp {
    type: sum
    sql: ${msrp} ;;
  }

  dimension_group: orderdate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ORDERDATE ;;
  }

  dimension: orderlinenumber {
    type: number
    sql: ${TABLE}.ORDERLINENUMBER ;;
  }

  dimension: ordernumber {
    type: number
    sql: ${TABLE}.ORDERNUMBER ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.PHONE ;;
  }

  dimension: postalcode {
    type: string
    sql: ${TABLE}.POSTALCODE ;;
  }

  dimension: priceeach {
    type: number
    sql: ${TABLE}.PRICEEACH ;;
  }

  dimension: productcode {
    type: string
    sql: ${TABLE}.PRODUCTCODE ;;
  }

  dimension: productline {
    type: string
    sql: ${TABLE}.PRODUCTLINE ;;
  }

  dimension: qtr_id {
    type: number
    sql: ${TABLE}.QTR_ID ;;
  }

  dimension: quantityordered {
    type: number
    sql: ${TABLE}.QUANTITYORDERED ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.SALES ;;
  }

  measure: total_sales {
    type: count_distinct
    sql: ${sales} ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  measure: status_count {
    type: count_distinct
    sql:  ${status} ;;
  }

  dimension: territory {
    type: string
    sql: ${TABLE}.TERRITORY ;;
  }

  dimension: year_id {
    type: number
    sql: ${TABLE}.YEAR_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [contactfirstname, contactlastname, customername]
  }
}
