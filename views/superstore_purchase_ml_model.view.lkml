view: superstore_purchase_ml_model {
  derived_table: {
    datagroup_trigger: bqml_datagroup
    sql_create: CREATE OR REPLACE MODEL `decisive-triode-363515.offshore.superstore_ml_model`
    OPTIONS(model_type='logistic_reg'
    , labels=['will_purchase_in_future']
    , min_rel_process = 0.005
    , max_iterations = 40
    ) AS
    select
      *
      from `decisive-triode-363515.offshore.superstore`;;
  }
 }
