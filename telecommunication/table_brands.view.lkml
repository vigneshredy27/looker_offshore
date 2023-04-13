view: table_brands {
  sql_table_name: `decisive-triode-363515.telecom.table_brands`
    ;;

  dimension: agents_count {
    type: number
    sql: ${TABLE}.Agents_count ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.BRAND ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
