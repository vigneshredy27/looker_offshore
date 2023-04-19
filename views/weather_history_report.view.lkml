view: weather_history_report {
  sql_table_name: `decisive-triode-363515.offshore.weather_history_report`
    ;;

  dimension: apparent_temperature__c_ {
    type: number
    sql: ${TABLE}.Apparent_Temperature__C_ ;;
  }

  dimension: clock_time {
    type: string
    sql: ${TABLE}.Clock_Time ;;
  }

  dimension: daily_summary {
    type: string
    sql: ${TABLE}.Daily_Summary ;;
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
    sql: ${TABLE}.Date ;;
  }

  dimension: dst {
    type: string
    sql: ${TABLE}.DST ;;
  }

  dimension_group: formatted {
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
    sql: ${TABLE}.Formatted_Date ;;
  }

  dimension: humidity {
    type: number
    sql: ${TABLE}.Humidity ;;
  }

  dimension: precip_type {
    type: string
    sql: ${TABLE}.Precip_Type ;;
  }

  dimension: pressure__millibars_ {
    type: number
    sql: ${TABLE}.Pressure__millibars_ ;;
  }

  dimension: summary {
    type: string
    sql: ${TABLE}.Summary ;;
  }

  dimension: temperature__c_ {
    type: number
    sql: ${TABLE}.Temperature__C_ ;;
  }

  dimension: visibility__km_ {
    type: number
    sql: ${TABLE}.Visibility__km_ ;;
  }

  dimension: wind_bearing__degrees_ {
    type: number
    sql: ${TABLE}.Wind_Bearing__degrees_ ;;
  }

  dimension: wind_speed__km_h_ {
    type: number
    sql: ${TABLE}.Wind_Speed__km_h_ ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: prep_count {
    type: count
    drill_fields: [precip_type]
  }
}
