connection: "vbqconnection"

# include all the views
include: "/views/**/*.view"
include: "/project40views/**/*.view"
include: "/telecommunication/**/*.view"
include: "/sprint_3_4/**/*.view"

datagroup: vmsspoc_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: vmsspoc_default_datagroup

explore: drugtest {}
explore: affordable_housing_dataset {}
explore: hr_dataste {}
explore: drugtrain {}
explore: weather_history_report {}
explore: hyundai {}
# explore: global_inflation {}
explore: survey_report {}
explore: airline_data {}
explore: sprint3_report2 {}
# explore: product_sales1 {
#   join: products {
#     type: left_outer
#     sql_on: ${product_sales1.product_id} = ${products.product_id} ;;
#     relationship: many_to_one
#   }
# }

# explore: product_sales_csv {}
#   join: products {
#     type: left_outer
#     sql_on: ${product_sales_csv.product_id} = ${products.product_id} ;;
#     relationship: many_to_one
#   }
# }

explore: hello_world {}

explore: pdt_table {}

explore: sales {}

explore: tripdata {}

explore: product_sales1 {}

explore: profits {}

explore: details {}

explore: test {}

explore: newtest {}

explore: name {}

explore: update {}

explore: model_user_predictions {}

explore: agriculture_seasonal_data1 {}

explore: superstore {
  join: us_zips {
    type: left_outer
    sql_on: ${us_zips.zip} = ${superstore.postal_code} ;;
    relationship: one_to_many
  }
}
#   label: "2016 year resuts"
#   view_label: "2016"
#   conditionally_filter: {
#     filters: [superstore.order_date: "2016"]
#     # unless: [superstore.order_date]
#   }
# }

explore: energy_consumption_monthly {}
explore: energy_consumption_weekly {}
explore: weekly_energy_comsumption {}
  # join: indian_cities_location {
  #   type: left_outer
  #   sql_on: ${indian_cities_location.city} = ${energy_consumption_weekly.city} ;;
  #   relationship: one_to_many
  # }
# }
explore: insurance {}
explore: manufacturing_operations {}
explore: supply_chain_logistics {}
explore: tech_layoffs {}
explore: us_zips {}
explore: indian_cities_location {}
explore: invoice_data {
  join: invoice_data_items {
    type: left_outer
    # foreign_key: invoice_data_items.item_id
    sql_on: ${invoice_data.item_id} =  ${invoice_data_items.item_id};;
    relationship: one_to_one
  }

  join: invoice_data_exchange_rates {
    type: left_outer
    sql_on: ${invoice_data.currency_id} = ${invoice_data_exchange_rates.currency_id} ;;
    relationship: many_to_one
  }

}


explore: invoice_data_items {}
explore: invoice_data_exchange_rates {}
explore: invoice_data_items_exchange_rates {}
explore: ipl_dataset {
  join: ipl_teams_names {
    type: left_outer
    sql_on: ${ipl_teams_names.winner} = ${ipl_dataset.winner} ;;
    relationship: many_to_one
  }

  join: margin {
    type: left_outer
    sql_on: ${margin.margin} = ${ipl_dataset.margin} ;;
    relationship: one_to_one
  }
}

explore: telecommunication_table {}
explore: combined_table {}
explore: agents_and_brands {
  join: combined_table {
    type: left_outer
    sql_on: ${agents_and_brands.brands} = ${combined_table.brand} ;;
    relationship: one_to_many
  }
}

# explore: agents_and_brands {
#   join: table_brands {
#     type: left_outer
#     sql_on: ${table_brands.brand} =  ${agents_and_brands.brands} ;;
#     relationship: one_to_many
#   }

#   join: srs_src_file_email_count {
#     type: left_outer
#     sql_on: ${srs_src_file_email_count.agent_name} = ${agents_and_brands.agents_name} ;;
#     relationship: many_to_one
#   }

#   join: srs_src_file_kc_agntallfields {
#     type: left_outer
#     sql_on: ${srs_src_file_kc_agntallfields.agentname} = ${agents_and_brands.agents_name} ;;
#     relationship: many_to_one
#     # fields: [srs_src_file_kc_agntallfields.total_cals]
#   }

#   join: srs_src_file_kc_csqallfields {
#     type: left_outer
#     sql_on: ${srs_src_file_kc_csqallfields.load_date} = ${srs_src_file_kc_agntallfields.load_date} ;;
#     relationship: one_to_one
#   }

#   join: csq_and_brands {
#     type: left_outer
#     sql_on: ${csq_and_brands.csq} = ${srs_src_file_kc_csqallfields.csqname} ;;
#     relationship: one_to_many
#   }

# }
explore: calls {}

explore: csq_and_brands {}
#   join: srs_src_file_kc_csqallfields {
#     type: left_outer
#     sql_on: ${srs_src_file_kc_csqallfields.csqname} = ${csq_and_brands.csq} ;;
#     relationship: one_to_many
#   }
#   join: table_brands {
#     type: left_outer
#     sql_on: ${table_brands.brand} = ${csq_and_brands.brand} ;;
#     relationship: many_to_one
#   }
#   join: agents_and_brands {
#     type: left_outer
#     sql_on: ${agents_and_brands.brands} = ${csq_and_brands.brand} ;;
#     relationship: many_to_many
#   }

# }
explore: srs_src_file_email_count {}
explore: srs_src_file_kc_agntallfields {}
explore: srs_src_file_kc_csqallfields {
  join: calls {
    type: left_outer
    sql_on: ${srs_src_file_kc_csqallfields.load_date} = ${calls.load_date} ;;
    relationship: one_to_one
  }
}
explore: table_brands {}
explore: ipl_teams_names {}
