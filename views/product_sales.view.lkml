view: product_sales {
  sql_table_name: `decisive-triode-363515.vlookerbq.product_sales`
    ;;

  dimension: brand_name {
    type: string
    sql: ${TABLE}.brand_name ;;
  }

  dimension: city_name {
    type: string
    sql: ${TABLE}.city_name ;;
  }

  dimension: date_ {
    type: string
    sql: ${TABLE}.date_ ;;
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

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.product_type ;;
  }

  dimension: total_discount_amount {
    type: number
    sql: ${TABLE}.total_discount_amount ;;
  }

  dimension: total_weighted_landing_price {
    type: number
    sql: ${TABLE}.total_weighted_landing_price ;;
  }

  dimension: unit {
    type: string
    sql: ${TABLE}.unit ;;
  }

  dimension: unit_selling_price {
    type: number
    sql: ${TABLE}.unit_selling_price ;;
  }

  dimension: test_dimension {
    type: string
    sql: ${TABLE}.product_type ;;
    action: {}

  }

  measure: count {
    type: count
    drill_fields: [brand_name, manufacturer_name, product_name, city_name]
  }
}
