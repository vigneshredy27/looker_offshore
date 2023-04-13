view: agents_and_brands {
  sql_table_name: `decisive-triode-363515.telecom.agents_and_brands`
    ;;

  dimension: agents_name {
    type: string
    sql: ${TABLE}.agents_name ;;
  }

  dimension: brands {
    type: string
    sql: ${TABLE}.brands ;;
  }

  measure: count {
    type: count
    drill_fields: [agents_name]
  }
}
