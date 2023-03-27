view: tripdata {
  sql_table_name: `decisive-triode-363515.vlookerbq.tripdata`
    ;;

  dimension: access_a_ride_flag {
    type: string
    sql: ${TABLE}.access_a_ride_flag ;;
  }

  dimension: airport_fee {
    type: number
    sql: ${TABLE}.airport_fee ;;
  }

  dimension: base_passenger_fare {
    type: number
    sql: ${TABLE}.base_passenger_fare ;;
  }

  dimension: bcf {
    type: number
    sql: ${TABLE}.bcf ;;
  }

  dimension: congestion_surcharge {
    type: number
    sql: ${TABLE}.congestion_surcharge ;;
  }

  dimension: dispatching_base_num {
    type: string
    sql: ${TABLE}.dispatching_base_num ;;
  }

  dimension: dolocation_id {
    type: number
    sql: ${TABLE}.DOLocationID ;;
  }

  dimension: driver_pay {
    type: number
    sql: ${TABLE}.driver_pay ;;
  }

  dimension_group: dropoff_datetime {
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
    sql: ${TABLE}.dropoff_datetime ;;
  }

  dimension: hvfhs_license_num {
    type: string
    sql: ${TABLE}.hvfhs_license_num ;;
  }

  dimension_group: on_scene_datetime {
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
    sql: ${TABLE}.on_scene_datetime ;;
  }

  dimension: originating_base_num {
    type: string
    sql: ${TABLE}.originating_base_num ;;
  }

  dimension_group: pickup_datetime {
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
    sql: ${TABLE}.pickup_datetime ;;
  }

  dimension: pulocation_id {
    type: number
    sql: ${TABLE}.PULocationID ;;
  }

  dimension_group: request_datetime {
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
    sql: ${TABLE}.request_datetime ;;
  }

  dimension: sales_tax {
    type: number
    sql: ${TABLE}.sales_tax ;;
  }

  dimension: shared_match_flag {
    type: yesno
    sql: ${TABLE}.shared_match_flag ;;
  }

  dimension: shared_request_flag {
    type: yesno
    sql: ${TABLE}.shared_request_flag ;;
  }

  dimension: tips {
    type: number
    sql: ${TABLE}.tips ;;
  }

  dimension: tolls {
    type: number
    sql: ${TABLE}.tolls ;;
  }

  dimension: trip_miles {
    type: number
    sql: ${TABLE}.trip_miles ;;
  }

  dimension: trip_time {
    type: number
    sql: ${TABLE}.trip_time ;;
  }

  dimension: wav_match_flag {
    type: yesno
    sql: ${TABLE}.wav_match_flag ;;
  }

  dimension: wav_request_flag {
    type: yesno
    sql: ${TABLE}.wav_request_flag ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
