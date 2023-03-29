view: product_sales1 {
  sql_table_name: `decisive-triode-363515.vlookerbq.product_sales1`
    ;;

  dimension: brand_name {
    type: string
    sql: ${TABLE}.brand_name ;;
  }

  dimension: city_name {
    type: string
    sql: ${TABLE}.city_name ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: manufacturer_name {
    type: string
    sql: ${TABLE}.manufacturer_name ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: procured_quantity {
    type: number
    sql: ${TABLE}.procured_quantity ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.product_type ;;
  }

  dimension: profit {
    type: number
    sql: ${TABLE}.profit ;;
  }

  dimension: total_discount_amount {
    type: number
    sql: ${TABLE}.total_discount_amount ;;
  }

  dimension: total_weighted_landing_price {
    type: number
    sql: ${TABLE}.total_weighted_landing_price ;;
  }

  dimension: unit_selling_price {
    type: number
    sql: ${TABLE}.unit_selling_price ;;
  }

  measure: AVERAGE {
    type: average
    sql: ${profit}  ;;
    value_format_name: usd
  }

  measure: SUM {
    type: sum
    sql: ${profit} ;;
  }

  measure: count {
    type: count
    drill_fields: [city_name, brand_name, manufacturer_name]
  }
}
