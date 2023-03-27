view: drugtrain {
  sql_table_name: `vlookerbq.drugtrain`
    ;;

  dimension: condition {
    type: string
    sql: ${TABLE}.condition ;;
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
    sql: ${TABLE}.date ;;
  }

  dimension: drug_name {
    type: string
    sql: ${TABLE}.drugName ;;
  }

  dimension: rating {
    type: number
    sql: ${TABLE}.rating ;;
  }

  dimension: unique_id {
    type: number
    sql: ${TABLE}.uniqueID ;;
  }

  dimension: useful_count {
    type: number
    sql: ${TABLE}.usefulCount ;;
  }

  measure: count {
    type: count
    drill_fields: [drug_name]
  }
}
