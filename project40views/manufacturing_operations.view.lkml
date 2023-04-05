view: manufacturing_operations {
  sql_table_name: `decisive-triode-363515.offshore.manufacturing_operations`
    ;;

  dimension: _of_sales_order {
    type: number
    sql: ${TABLE}._of_Sales_Order ;;
  }

  dimension: ab_awaiting_blinds {
    type: yesno
    sql: ${TABLE}.AB_Awaiting_blinds ;;
  }

  dimension: ab_hold {
    type: string
    sql: ${TABLE}.AB_Hold ;;
  }

  dimension: b1_hold {
    type: string
    sql: ${TABLE}.B1_Hold ;;
  }

  dimension: b1_sales_release_material_shortage {
    type: yesno
    sql: ${TABLE}.B1_Sales_release_material_shortage ;;
  }

  dimension: b2_hold {
    type: string
    sql: ${TABLE}.B2_Hold ;;
  }

  dimension: b2_production_material_shortage {
    type: yesno
    sql: ${TABLE}.B2_Production_material_shortage ;;
  }

  dimension: bu_buy_in_awaiting_notice {
    type: yesno
    sql: ${TABLE}.BU_Buy_in_awaiting_notice ;;
  }

  dimension: bu_hold {
    type: string
    sql: ${TABLE}.BU_Hold ;;
  }

  dimension: column1 {
    type: number
    sql: ${TABLE}.Column1 ;;
  }

  dimension: configuration {
    type: string
    sql: ${TABLE}.Configuration ;;
  }

  dimension: cr_credit_stop {
    type: yesno
    sql: ${TABLE}.CR_Credit_stop ;;
  }

  dimension: cr_hold {
    type: string
    sql: ${TABLE}.CR_Hold ;;
  }

  dimension_group: created_date_and {
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
    sql: ${TABLE}.Created_date_and_time ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}.Customer ;;
  }

  dimension_group: date_created {
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
    sql: ${TABLE}.Date_Created ;;
  }

  dimension: days_overdue {
    type: number
    sql: ${TABLE}.Days_Overdue ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.Department ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}.`Group` ;;
  }

  dimension: hold_status {
    type: string
    sql: ${TABLE}.Hold_Status ;;
  }

  dimension: in_internal_delay {
    type: yesno
    sql: ${TABLE}.IN_Internal_delay ;;
  }

  dimension: int_hold {
    type: string
    sql: ${TABLE}.INT_Hold ;;
  }

  dimension: is_this_sales_line_a_prss_ {
    type: yesno
    sql: ${TABLE}.Is_this_sales_line_a_PRSS_ ;;
  }

  dimension: item_number {
    type: string
    sql: ${TABLE}.Item_number ;;
  }

  dimension: leadtime {
    type: string
    sql: ${TABLE}.Leadtime ;;
  }

  dimension: lh_hold {
    type: string
    sql: ${TABLE}.LH_Hold ;;
  }

  dimension: lh_other_line_in_sales_order_is_on_hold {
    type: yesno
    sql: ${TABLE}.LH_Other_line_in_sales_order_is_on_hold ;;
  }

  dimension: line_status {
    type: string
    sql: ${TABLE}.Line_status ;;
  }

  dimension: manufactured_item {
    type: yesno
    sql: ${TABLE}.Manufactured_item ;;
  }

  dimension: month_due {
    type: string
    sql: ${TABLE}.Month_Due ;;
  }

  dimension: net_amount {
    type: number
    sql: ${TABLE}.Net_amount ;;
  }

  dimension: order_type {
    type: string
    sql: ${TABLE}.Order_Type ;;
  }

  dimension: product_group {
    type: string
    sql: ${TABLE}.Product_Group ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.Product_Type ;;
  }

  dimension: product_type__check_only_ {
    type: string
    sql: ${TABLE}.Product_Type__Check_only_ ;;
  }

  dimension: purchased_item {
    type: yesno
    sql: ${TABLE}.Purchased_item ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  dimension: rep {
    type: number
    sql: ${TABLE}.Rep ;;
  }

  dimension: sales_order {
    type: string
    sql: ${TABLE}.Sales_order ;;
  }

  dimension_group: ship {
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
    sql: ${TABLE}.Ship_date ;;
  }

  dimension: stat_group {
    type: string
    sql: ${TABLE}.Stat_Group ;;
  }

  dimension: stopped {
    type: yesno
    sql: ${TABLE}.Stopped ;;
  }

  dimension: warehouse {
    type: string
    sql: ${TABLE}.Warehouse ;;
  }

  dimension: warehouse2 {
    type: number
    sql: ${TABLE}.Warehouse2 ;;
  }

  dimension: week_no__due {
    type: string
    sql: ${TABLE}.Week_No__Due ;;
  }

  dimension: wo_no_ {
    type: string
    sql: ${TABLE}.WO_No_ ;;
  }

  dimension: x4_hold {
    type: string
    sql: ${TABLE}.X4_Hold ;;
  }

  dimension: x4_material_shortage_post {
    type: yesno
    sql: ${TABLE}.X4_Material_shortage_post ;;
  }

  dimension: x5_customer_request_hold {
    type: yesno
    sql: ${TABLE}.X5_Customer_request_hold ;;
  }

  dimension: x5_hold {
    type: string
    sql: ${TABLE}.X5_Hold ;;
  }

  dimension: x8_hold {
    type: string
    sql: ${TABLE}.X8_Hold ;;
  }

  dimension: x8_production_request_for_information {
    type: yesno
    sql: ${TABLE}.X8_Production_request_for_information ;;
  }

  dimension: x9_customer_service_request_for_information {
    type: yesno
    sql: ${TABLE}.X9_Customer_Service_request_for_information ;;
  }

  dimension: x9_hold {
    type: string
    sql: ${TABLE}.X9_Hold ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
