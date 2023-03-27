view: test {
  sql_table_name:  `decisive-triode-363515.vlookerbq.details` ;;

  dimension: id {
    type:  number
    primary_key: yes
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
    action: {
      label: "Update the Field"
      url: "https://us-central1-decisive-triode-363515.cloudfunctions.net/upload_to_bq_looker"

      param: {
        name: "new name"
        value: "{{ value }}"
      }

      form_param: {
        name: "annotation"
        type: select
        label: "Update the Field"
        default: "No"
        description: "Update the name field if there is any error while initial entry"
        option: {
          name: "No"
        }
        option: {
          name: "Yes"
        }
      }
    }
  }

  # dimension: pay {
  #   type:  string
  #   sql:  ${TABLE}.pay ;;
  #   action: {
  #     label: "Update the Field"
  #     url: ""

  #     param: {
  #       name: "Update Pay"
  #       value: "{{ value }}"
  #     }

  #     form_param: {
  #       name: "annotation"
  #       type: select
  #       label: "Update Pay"
  #       default: "No"
  #       description: "Update the pay for the person"
  #       option: {
  #         name: "No"
  #       }
  #       option: {
  #         name: "Yes"
  #       }
  #     }
  #   }
  # }

}
