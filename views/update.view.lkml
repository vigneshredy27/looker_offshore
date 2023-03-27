view: update {
  sql_table_name: `decisive-triode-363515.task.update`
    ;;

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
    action: {
      label: "Update the Field"
      url: "https://us-central1-decisive-triode-363515.cloudfunctions.net/function-1"
      param: {
        name: "name"
        value: "{{ value }}"
      }

      form_param: {
        name: "annotation"
        type: select
        label: "Update the Field"
        # default: "Yes"
        description: "Update the name field if there is any error while initial entry"
        option: {
          name: "No"
          label: "No"
        }

        option: {
          name: "Yes"
          label: "Yes"

        }
        # option: {
        #   name: "True"
        # }
        # option: {
        #   name: "False"
        # }
      }
    }
  }

  dimension: pay {
    type: string
    sql: ${TABLE}.pay ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
