connection: "vbqconnection"

# include all the views
include: "/views/**/*.view"
include: "/project40views/**/*.view"

datagroup: vmsspoc_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: vmsspoc_default_datagroup

explore: drugtest {}

explore: drugtrain {}

explore: hyundai {}

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
explore: insurance {}
explore: manufacturing_operations {}
explore: supply_chain_logistics {}
explore: tech_layoffs {}
explore: us_zips {}
