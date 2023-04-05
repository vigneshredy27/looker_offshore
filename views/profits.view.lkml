view: profits {

  derived_table: {

    sql: SELECT manufacturer_name, profit,  product_type, brand_name, date, procured_quantity as quantity, order_id, city_name
--    # SUM(profit) as total_profit, COUNT(*) AS total_quantity
    FROM vlookerbq.product_sales1
    GROUP BY 1,2,3,4,5,6,7,8
    ;;


    }

    dimension: manufacturer_name {
      type: string
      sql: ${TABLE}.manufacturer_name ;;
    }

    # dimension: date {
    #   sql: ${TABLE}.date ;;
    #   type: date
    #
    # }

    dimension_group: order_date {
      type: time
      timeframes: [date, week, month]
      sql: ${TABLE}.date ;;
    }

    # dimension_group: date {
    #   type: time
    #   timeframes: [
    #     raw,
    #     date,
    #     week,
    #     month
    #   ]
    #   sql: ${TABLE}.date ;;
    # }

    dimension: order_id {
      type: number
      sql: ${TABLE}.order_id ;;
    }

    dimension: city_name {
      type: string
      sql: ${TABLE}.city_name ;;
    }

    dimension: profit {
      type: number
      sql: ${TABLE}.profit ;;
    }

    dimension: product_type {
      type: string
      sql: ${TABLE}.product_type ;;
    }

    dimension: brand_name {
      type: string
      sql: ${TABLE}.brand_name ;;
    }

    dimension: quantity {
      type: number
      sql: ${TABLE}.procured_quantity ;;
    }

    measure: total_profit {
      type: sum
      sql: ROUND(${TABLE}.profit, 1) ;;
    }

    measure: total_quantity {
      type: count_distinct
      sql: ${TABLE}.procured_quantity ;;
    }

}

view: profits_pdt {
  derived_table: {
    explore_source: sales {}
  }
}
