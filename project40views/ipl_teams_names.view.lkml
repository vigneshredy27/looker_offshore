view: ipl_teams_names {
  sql_table_name: `decisive-triode-363515.offshore.ipl_teams_names`
    ;;

  dimension: winner {
    type: string
    sql: ${TABLE}.winner ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
