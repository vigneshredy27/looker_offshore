view: invoice_data_items_exchange_rates {
  sql_table_name: `decisive-triode-363515.offshore.invoice_data_items_exchange_rates`
    ;;

  dimension: approval_employee {
    type: string
    sql: ${TABLE}.Approval_Employee ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: commodity_detail {
    type: string
    sql: ${TABLE}.Commodity_Detail ;;
  }

  dimension: currency_id {
    type: string
    sql: ${TABLE}.Currency_ID ;;
  }

  dimension: currency_id_1 {
    type: string
    sql: ${TABLE}.Currency_ID_1 ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.Department ;;
  }

  dimension: discount__ {
    type: number
    sql: ${TABLE}.Discount__ ;;
  }

  dimension: discount_given {
    type: number
    primary_key: yes
    sql: ${discount__} ;;
  }

  dimension: exchange_rate {
    type: string
    sql: ${TABLE}.Exchange_Rate ;;
  }

  dimension: exchange_short_code {
    type: string
    sql: ${TABLE}.Exchange_Short_Code ;;
  }

  dimension_group: invoice {
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
    sql: ${TABLE}.Invoice_Date ;;
  }

  dimension: Month {
    type: string
    sql: ${invoice_month} ;;
  }

  dimension: month_number {
    type: number
    sql:
    CASE
      WHEN ${Month} IS NULL THEN NULL
      ELSE
        CASE
          WHEN LENGTH(${Month}) = 7 THEN
            CAST(SUBSTRING(${Month}, 6, 2) AS INT64)
          ELSE NULL
        END
    END ;;
  }

  dimension: month_name {
    type: string
    sql:
    CASE
      WHEN ${Month} IS NULL THEN NULL
      ELSE
        CASE
          WHEN LENGTH(${Month}) = 7 THEN
            CASE
              WHEN SUBSTRING(${Month}, 6, 2) = '01' THEN 'January'
              WHEN SUBSTRING(${Month}, 6, 2) = '02' THEN 'February'
              WHEN SUBSTRING(${Month}, 6, 2) = '03' THEN 'March'
              WHEN SUBSTRING(${Month}, 6, 2) = '04' THEN 'April'
              WHEN SUBSTRING(${Month}, 6, 2) = '05' THEN 'May'
              WHEN SUBSTRING(${Month}, 6, 2) = '06' THEN 'June'
              WHEN SUBSTRING(${Month}, 6, 2) = '07' THEN 'July'
              WHEN SUBSTRING(${Month}, 6, 2) = '08' THEN 'August'
              WHEN SUBSTRING(${Month}, 6, 2) = '09' THEN 'September'
              WHEN SUBSTRING(${Month}, 6, 2) = '10' THEN 'October'
              WHEN SUBSTRING(${Month}, 6, 2) = '11' THEN 'November'
              WHEN SUBSTRING(${Month}, 6, 2) = '12' THEN 'December'
              ELSE NULL
            END
          ELSE NULL
        END
    END ;;
    order_by_field: month_number
  }

  dimension: item_id {
    type: string
    sql: ${TABLE}.Item_ID ;;
  }

  dimension: item_id_1 {
    type: string
    sql: ${TABLE}.Item_ID_1 ;;
  }

  dimension: item_quantity {
    type: number
    sql: ${TABLE}.Item_Quantity ;;
  }

  dimension: payment_term_days {
    type: number
    sql: ${TABLE}.Payment_Term_Days ;;
  }

  dimension: rate {
    type: number
    sql: ${TABLE}.Rate ;;
  }

  dimension: sub_category {
    type: string
    sql: ${TABLE}.Sub_Category ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}.Unit_Price ;;
  }

  dimension: Total_Purchase_Order_Amount {
    type: number
    sql: (${item_quantity})*(${unit_price})*(${rate}) ;;
    # value_format_name: usd
  }

  dimension: Total_Invoice_Amount {
    type: number
    sql: (${item_quantity})*(${unit_price}) ;;
    # value_format_name: usd
  }


  measure: count {
    type: count
    drill_fields: []
  }

  measure: Number_Of_Purchase_Orders {
    type: count
    drill_fields: []
  }

  measure: Total_Discount {
    type: average
    sql: ${discount_given} ;;
    value_format: "0.0%"
  }

  measure: Total_Purchases_Order_Amount_ {
    type: sum
    sql: ${Total_Purchase_Order_Amount} ;;
    value_format: "0.00"
    value_format_name: usd
  }
  measure: Average_Purchases_Order_Amount_ {
    type: average
    sql: ${Total_Purchase_Order_Amount} ;;
    value_format: "0.00"
    value_format_name: usd
  }

  measure: Average_Order_Invoice_Amount {
    type: average
    sql: ${Total_Invoice_Amount} ;;
    value_format: "0.00"
    value_format_name: usd
  }

  measure: Total_Order_Invoice_Amount {
    type: sum
    sql: ${Total_Invoice_Amount} ;;
    value_format: "0.00"
    value_format_name: usd
  }

  measure: Total_Discount_Percentage {
    type: sum
    sql: ${discount__}/100 ;;
    value_format: "0.0%"
  }

  measure: Average_Dsicount_Percentage {
    type: average
    sql: ${discount__} ;;
    value_format: "0.0%"
  }

  measure: Total_Invoices {
    type: count
    drill_fields: [item_id]
  }
}
