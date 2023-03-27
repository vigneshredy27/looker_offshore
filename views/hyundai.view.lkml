view: hyundai {
  sql_table_name: `decisive-triode-363515.vlookerbq.hyundai`
    ;;

  dimension: engine_size {
    type: number
    sql: ${TABLE}.engineSize ;;
  }

  dimension: fuel_type {
    type: string
    sql: ${TABLE}.fuelType ;;
  }



  measure: fuel_type_group {
    type: count_distinct
    sql: ${fuel_type} ;;
  }

  dimension: mileage {
    type: number
    sql: ${TABLE}.mileage ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
    action: {
      label: "High Taxed Model"
      url: "https://us-central1-decisive-triode-363515.cloudfunctions.net/lookertest"

      param: {
        name: "model"
        value: "{{value}}"
      }
      form_param: {
        name: "high_tax"
        type: select
        label: "add to the list!"
        option: {
          name: "Yes"
          label: "Yes"
        }
        required: yes
        description: "select yes for high taxed vehicle"
        default: "Yes"

      }
    }
  }

  measure: model_count {
    type: count_distinct
    sql: ${model} ;;
  }

  dimension: mpg {
    type: number
    sql: ${TABLE}.mpg ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  measure: average_price {
    type: average
    sql: ${price} ;;
    value_format_name: usd
  }
  dimension: tax____ {
    type: number
    sql: ${TABLE}.tax____ ;;
  }

  measure: average_tax_by_model{
    type: average
    sql: ${tax____} ;;
  }

  dimension: transmission {
    type: string
    sql: ${TABLE}.transmission ;;
  }

  measure: group_by_transmission {
    type: count_distinct
    sql: ${transmission} ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: high_tax {
    type: yesno
    sql: ${average_tax_by_model} > 150 ;;

  }

  measure: count {
    type: count
    drill_fields: []
  }
}
