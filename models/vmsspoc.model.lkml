connection: "vbqconnection"

# include all the views
include: "/views/**/*.view"

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
