view: tech_layoffs {
  sql_table_name: `decisive-triode-363515.offshore.tech_layoffs`
    ;;

  dimension: additional_notes {
    type: string
    sql: ${TABLE}.additional_notes ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.company ;;
  }

  dimension: headquarter_location {
    type: string
    sql: ${TABLE}.headquarter_location ;;
  }

  dimension: impacted_workforce_percentage {
    type: string
    sql: ${TABLE}.impacted_workforce_percentage ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}.industry ;;
  }

  dimension_group: reported {
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
    sql: ${TABLE}.reported_date ;;
  }

  dimension: sources {
    type: string
    sql: ${TABLE}.sources ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: total_layoffs {
    type: string
    sql: ${TABLE}.total_layoffs ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
