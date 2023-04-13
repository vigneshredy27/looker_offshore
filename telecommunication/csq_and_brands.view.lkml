view: csq_and_brands {
  sql_table_name: `decisive-triode-363515.telecom.csq_and_brands`
    ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: csq {
    type: string
    sql: ${TABLE}.csq ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
