view: hello_world {
  derived_table: {
    sql: WITH hello_world AS (SELECT 'Hello, World!' AS message )
      SELECT
          hello_world.message  AS hello_world_message
      FROM hello_world
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: hello_world_message {
    type: string
    sql: ${TABLE}.hello_world_message ;;
  }

  set: detail {
    fields: [hello_world_message]
  }
}
