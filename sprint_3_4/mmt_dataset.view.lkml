view: mmt_dataset {
  sql_table_name: `decisive-triode-363515.sprint_3_4.mmt_dataset`
    ;;

  dimension: area {
    type: string
    sql: ${TABLE}.area ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension_group: crawl {
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
    sql: ${TABLE}.crawl_date ;;
  }

  dimension: highlight_value {
    type: string
    sql: ${TABLE}.highlight_value ;;
  }

  dimension: hotel_overview {
    type: string
    sql: ${TABLE}.hotel_overview ;;
  }

  dimension: hotel_star_rating {
    type: string
    sql: ${TABLE}.hotel_star_rating ;;
  }

  dimension: in_your_room {
    type: string
    sql: ${TABLE}.in_your_room ;;
  }

  dimension: is_value_plus {
    type: yesno
    sql: ${TABLE}.is_value_plus ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: mmt_holidayiq_review_count {
    type: number
    sql: ${TABLE}.mmt_holidayiq_review_count ;;
  }

  dimension: mmt_location_rating {
    type: string
    sql: ${TABLE}.mmt_location_rating ;;
  }

  dimension: mmt_review_count {
    type: number
    sql: ${TABLE}.mmt_review_count ;;
  }

  dimension: mmt_review_rating {
    type: string
    sql: ${TABLE}.mmt_review_rating ;;
  }

  dimension: mmt_review_score {
    type: number
    sql: ${TABLE}.mmt_review_score ;;
  }

  dimension: mmt_traveller_type_review_count {
    type: string
    sql: ${TABLE}.mmt_traveller_type_review_count ;;
  }

  dimension: mmt_tripadvisor_count {
    type: number
    sql: ${TABLE}.mmt_tripadvisor_count ;;
  }

  dimension: property_id {
    type: string
    sql: ${TABLE}.property_id ;;
  }

  dimension: property_name {
    type: string
    sql: ${TABLE}.property_name ;;
  }

  dimension: property_type {
    type: string
    sql: ${TABLE}.property_type ;;
  }

  dimension_group: qts {
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
    sql: ${TABLE}.qts ;;
  }

  dimension_group: query_time_stamp {
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
    sql: ${TABLE}.query_time_stamp ;;
  }

  dimension: room_types {
    type: string
    sql: ${TABLE}.room_types ;;
  }

  dimension: site_review_count {
    type: string
    sql: ${TABLE}.site_review_count ;;
  }

  dimension: site_review_rating {
    type: number
    sql: ${TABLE}.site_review_rating ;;
  }

  dimension: sitename {
    type: string
    sql: ${TABLE}.sitename ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: traveller_rating {
    type: string
    sql: ${TABLE}.traveller_rating ;;
  }

  dimension: uniq_id {
    type: string
    sql: ${TABLE}.uniq_id ;;
  }

  measure: count {
    type: count
    drill_fields: [property_name, sitename]
  }
}
