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
