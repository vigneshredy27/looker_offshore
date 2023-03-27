view: name {
  sql_table_name: `decisive-triode-363515.vlookerbq.name`
    ;;

  dimension: annotation {
    type: number
    sql: ${TABLE}.annotation ;;
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

  dimension_group: datetime {
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
    datatype: datetime
    sql: ${TABLE}.datetime ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
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
    drill_fields: [name]
  }
}
