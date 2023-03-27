view: newtest {
  sql_table_name: `decisive-triode-363515.vlookerbq.newtest`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: pay {
    type: number
    sql: ${TABLE}.pay ;;
    action: {
      label: "Update the Field"
      url: "https://us-central1-decisive-triode-363515.cloudfunctions.net/upload_to_bq_looker"
      param: {
        name: "name"
        value: "{{ value }}"
      }

      form_param: {
        name: "annotation"
        type: string
        label: "Update the Field"
        # default: "No"
        description: "Update the name field if there is any error while initial entry"
        # option: {
        #   name: "No"
        # }
        # option: {
        #   name: "Yes"
        # }
      }
    }
  }


  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
