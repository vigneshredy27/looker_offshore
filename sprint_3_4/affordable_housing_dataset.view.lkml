view: affordable_housing_dataset {
  sql_table_name: `decisive-triode-363515.sprint_3_4.affordable_housing_dataset`
    ;;

  dimension_group: completion {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Completion ;;
  }

  dimension: funding {
    type: string
    sql: ${TABLE}.Funding ;;
  }

  dimension: locality {
    type: string
    sql: ${TABLE}.Locality ;;
  }

  dimension: registered_provider__rp_ {
    type: string
    sql: ${TABLE}.Registered_Provider__RP_ ;;
  }

  dimension: Registered_Providers {
    type: string
    sql:
        Case ${TABLE}.Registered_Provider__RP_
          when "Abbeyfield" then "Abbeyfield"
          when "Accent Group" then "Accent Group"
          when "Chartford Housing" then "Chartford Housing"
          when "Connect Housing" then "Connect Housing Association"
          when "Connect Housing Association" then "Connect Housing Association"
          when "Heylo" then "Heylo"
          when "Home Group" then "Home Group"
          when "Sanctuary Housing" then "Sanctuary Housing"
          when  "St Vincent's Housing Association" then "St. Vincent's Housing Association"
          when "St. Vincent's Housing Association" then "St. Vincent's Housing Association"
          when "St. Vincents" then "St. Vincent's Housing Association"
          when "St. Vincents Housing Association" then "St. Vincent's Housing Association"
          when "St.Vincents Housing Association" then "St. Vincent's Housing Association"
          when "Stonewater" then "Stonewater Housing"
          when "Stonewater Housing" then "Stonewater Housing"
          when "Together Housing Group" then "Together Housing Group"
          when "Togther Housing Group" then "Together Housing Group"
          when "Yorkshire Housing" then "Yorkshire Housing"
          when "Your Housing Group" then "Your Housing Group"
          else "N/A"
          END;;
  }

  dimension: total_affordable_homes__ah_ {
    type: number
    sql: ${TABLE}.Total_Affordable_Homes__AH_ ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure:  Registered_Providers_Count {
    type: count
    drill_fields: [Registered_Providers]
  }

  measure: Total_Affordable_Homes_By_Providers {
    type: sum
    sql: ${total_affordable_homes__ah_} ;;
  }

  measure: Total_Affordable_Homes {
    type: count
    drill_fields: [total_affordable_homes__ah_]
  }

  measure: Providers_list {
    type: list
    list_field: registered_provider__rp_
  }

}
