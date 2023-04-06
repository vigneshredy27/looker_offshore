view: invoice_data_items {
  sql_table_name: `decisive-triode-363515.offshore.invoice_data_items`
    ;;

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: commodity_detail {
    type: string
    sql: ${TABLE}.Commodity_Detail ;;
  }

  dimension: item_id {
    type: string
    sql: ${TABLE}.Item_ID ;;
  }

  dimension: sub_category {
    type: string
    sql: ${TABLE}.Sub_Category ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
