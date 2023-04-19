view: airline_data {
  sql_table_name: `decisive-triode-363515.sprint_3_4.airline_data`
    ;;

  dimension: age {
    type: number
    sql: ${TABLE}.Age ;;
  }

  dimension: arrival_delay_in_minutes {
    type: number
    sql: ${TABLE}.Arrival_Delay_in_Minutes ;;
  }

  dimension: baggage_handling {
    type: number
    sql: ${TABLE}.Baggage_handling ;;
  }

  dimension: checkin_service {
    type: number
    sql: ${TABLE}.Checkin_service ;;
  }

  dimension: class {
    type: string
    sql: ${TABLE}.Class ;;
  }

  dimension: cleanliness {
    type: number
    sql: ${TABLE}.Cleanliness ;;
  }

  dimension: customer_type {
    type: string
    sql: ${TABLE}.Customer_Type ;;
  }

  dimension: departure_arrival_time_convenient {
    type: number
    sql: ${TABLE}.Departure_Arrival_time_convenient ;;
  }

  dimension: departure_delay_in_minutes {
    type: number
    sql: ${TABLE}.Departure_Delay_in_Minutes ;;
  }

  dimension: ease_of_online_booking {
    type: number
    sql: ${TABLE}.Ease_of_Online_booking ;;
  }

  dimension: flight_distance {
    type: number
    sql: ${TABLE}.Flight_Distance ;;
  }

  dimension: food_and_drink {
    type: number
    sql: ${TABLE}.Food_and_drink ;;
  }

  dimension: gate_location {
    type: number
    sql: ${TABLE}.Gate_location ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  dimension: inflight_entertainment {
    type: number
    sql: ${TABLE}.Inflight_entertainment ;;
  }

  dimension: inflight_wifi_service {
    type: number
    sql: ${TABLE}.Inflight_wifi_service ;;
  }

  dimension: leg_room_service {
    type: number
    sql: ${TABLE}.Leg_room_service ;;
  }

  dimension: on_board_service {
    type: number
    sql: ${TABLE}.On_board_service ;;
  }

  dimension: online_boarding {
    type: number
    sql: ${TABLE}.Online_boarding ;;
  }

  dimension: online_support {
    type: number
    sql: ${TABLE}.Online_support ;;
  }

  dimension: satisfaction {
    type: string
    sql: ${TABLE}.satisfaction ;;
  }

  dimension: seat_comfort {
    type: number
    sql: ${TABLE}.Seat_comfort ;;
  }

  dimension: type_of_travel {
    type: string
    sql: ${TABLE}.Type_of_Travel ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: Average_Delay_Arrivals {
    type: average
    sql: ${arrival_delay_in_minutes} ;;
    value_format: "0.00  \"Minutes\""
  }

  measure: Average_Delay_Departures {
    type: average
    sql: ${departure_delay_in_minutes} ;;
    value_format: "0.00  \"Minutes\""
  }

  measure: Satisfaction_Level {
    type: count
    drill_fields: [satisfaction]
  }

  measure: Seat_Comfort {
    type: count
    drill_fields: [seat_comfort]
  }

  measure: Departure_Arrival_Time_Convinient {
    type: count
    drill_fields: [departure_arrival_time_convenient]
  }

  measure: Baggage_Handling {
    type: count
    drill_fields: [baggage_handling]
  }

  measure: Online_Boarding {
    type: count
    drill_fields: [online_boarding]
  }

  measure: Ease_Of_Online_Booking {
    type: count
    drill_fields: [ease_of_online_booking]
  }

  measure: Gate_Location {
    type: count
    drill_fields: [gate_location]
  }


}
