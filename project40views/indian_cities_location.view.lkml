view: indian_cities_location {
  sql_table_name: `decisive-triode-363515.offshore.indian_cities_location`
    ;;

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: iso2 {
    type: string
    sql: ${TABLE}.iso2 ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.Latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.Longitude ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
