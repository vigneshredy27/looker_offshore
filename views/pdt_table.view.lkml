view: pdt_table {
  #sql_table_name: drugtest ;;

  derived_table: {
    explore_source: drugtest{
      column: drug_name {field: drugtest.drug_name}
      column: condition {field: drugtest.condition}
      column: useful_count {field: drugtest.useful_count}
    }

  }

  dimension: drug_name {
    type: string
    sql: ${TABLE}.drug_name ;;
  }

  dimension: condition {
    type: string
    sql: ${TABLE}.condition;;
  }

  dimension: useful_count {
    type: number
    sql: ${TABLE}.useful_count ;;
  }

  measure: drug_count {
    type:  count_distinct
    sql: ${TABLE}.drug_name ;;
  }

 }
