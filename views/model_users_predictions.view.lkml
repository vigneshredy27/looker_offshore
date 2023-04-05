view: model_user_predictions {
  parameter: distance {type: number}
  parameter: amount {type: number}
  parameter: hour {type: number}

  derived_table: {
    sql:
     SELECT * FROM ML.EXPLAIN_PREDICT(MODEL `decisive-triode-363515.task.fraud_prediction`, (
       SELECT '001' AS trans_id,
        {% parameter amount %} AS card_transactions_amount,
        {% parameter distance %} AS card_transactions_transaction_distance,
        {% parameter hour %} AS card_transactions_transaction_hour_of_day
      ), STRUCT(0.50 AS threshold) );;
  }

  dimension: predicted_is_fraud {
    type: string
    sql: ${TABLE}.predicted_is_fraud ;;
  }

  dimension: Amount {
    type: number
    sql: ${TABLE}.card_transactions_amount ;;
  }

  dimension: Distance {
    type: number
    sql: ${TABLE}.card_transactions_transaction_distance ;;
  }

  dimension: Hour {
    type: number
    sql: ${TABLE}.card_transactions_transaction_hour_of_day ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

}
