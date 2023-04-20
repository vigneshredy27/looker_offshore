view: sprint3_report2 {
  sql_table_name: `decisive-triode-363515.sprint_3_4.sprint3_report2`
    ;;

  dimension: airline_id {
    type: number
    sql: ${TABLE}.AIRLINE_ID ;;
  }

  dimension: carrier_name {
    type: string
    sql: ${TABLE}.CARRIER_NAME ;;
  }

  dimension: dest {
    type: string
    sql: ${TABLE}.DEST ;;
  }

  dimension: dest_city_name {
    type: string
    sql: ${TABLE}.DEST_CITY_NAME ;;
  }

  dimension: dest_country {
    type: string
    sql: ${TABLE}.DEST_COUNTRY ;;
  }

  dimension: dest_country_name {
    type: string
    sql: ${TABLE}.DEST_COUNTRY_NAME ;;
  }

  dimension: dest_state_abr {
    type: string
    sql: ${TABLE}.DEST_STATE_ABR ;;
  }

  dimension: dest_state_nm {
    map_layer_name: us_states
    type: string
    sql: ${TABLE}.DEST_STATE_NM ;;
    label: "US State"
  }

  dimension: month_num {
    type: number
    sql: ${TABLE}.MONTH ;;
  }

  dimension: Month {
    type: string
    sql:
    CASE ${TABLE}.MONTH
    WHEN 1 THEN 'January'
    WHEN 2 THEN 'February'
    WHEN 3 THEN 'March'
    WHEN 4 THEN 'April'
    WHEN 5 THEN 'May'
    WHEN 6 THEN 'June'
    WHEN 7 THEN 'July'
    WHEN 8 THEN 'August'
    WHEN 9 THEN 'September'
    WHEN 10 THEN 'October'
    WHEN 11 THEN 'November'
    WHEN 12 THEN 'December'
    ELSE 'Unknown'
    END;;
    alpha_sort: yes
    order_by_field: month_num
  }

  dimension: origin {
    type: string
    sql: ${TABLE}.ORIGIN ;;
  }

  dimension: origin_city_name {
    type: string
    sql: ${TABLE}.ORIGIN_CITY_NAME ;;
  }

  dimension: origin_country {
    type: string
    sql: ${TABLE}.ORIGIN_COUNTRY ;;
  }

  dimension: origin_country_name {
    type: string
    sql: ${TABLE}.ORIGIN_COUNTRY_NAME ;;
  }

  dimension: origin_state_abr {
    type: string
    sql: ${TABLE}.ORIGIN_STATE_ABR ;;
  }

  dimension: origin_state_nm {
    type: string
    sql: ${TABLE}.ORIGIN_STATE_NM ;;
  }

  dimension: sum_passengers {
    type: number
    sql: ${TABLE}.Sum_PASSENGERS ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.YEAR ;;
  }

  measure: count {
    type: count
    drill_fields: [carrier_name, dest_city_name, origin_city_name, origin_country_name, dest_country_name]
  }
  measure: Passengers {
    type: sum
    sql: ${sum_passengers} ;;
  }

  measure: Average_Passengers_Traffic_Monthly {
    type: average
    sql: ${sum_passengers} ;;
    value_format: "0.00"
  }

  measure: Total_Carriers {
    type: count_distinct
    sql: ${carrier_name} ;;
  }
}
