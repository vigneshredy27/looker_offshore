view: agriculture_seasonal_data1 {
  sql_table_name: `decisive-triode-363515.offshore.agriculture_seasonal_data1`
    ;;

  dimension: area {
    type: number
    sql: ${TABLE}.area ;;
  }

  dimension: crop {
    type: string
    sql: ${TABLE}.crop ;;
  }

  dimension: crop_year {
    type: number
    sql: ${TABLE}.crop_year ;;
  }

  dimension: district {
    type: string
    sql: ${TABLE}.district ;;
  }

  dimension: production {
    type: number
    sql: ${TABLE}.production ;;
  }

  dimension: season {
    type: string
    sql: ${TABLE}.season ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: yield {
    type: number
    sql: ${TABLE}.yield ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
