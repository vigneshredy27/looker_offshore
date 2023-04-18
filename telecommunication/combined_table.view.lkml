view: combined_table {
  sql_table_name: `decisive-triode-363515.telecom.combined_table`
    ;;

  dimension: asa {
    type: number
    sql: ${TABLE}.ASA ;;
  }

  dimension: avgabandonedperday {
    type: number
    sql: ${TABLE}.AVGABANDONEDPERDAY ;;
  }

  dimension: avgabandonedtime {
    type: number
    sql: ${TABLE}.AVGABANDONEDTIME ;;
  }

  dimension: avgdequeuedtime {
    type: number
    sql: ${TABLE}.AVGDEQUEUEDTIME ;;
  }

  dimension: avghandletime {
    type: number
    sql: ${TABLE}.AVGHANDLETIME ;;
  }

  dimension: avgqueuetime {
    type: number
    sql: ${TABLE}.AVGQUEUETIME ;;
  }

  dimension: avgspeedofanswer {
    type: number
    sql: ${TABLE}.AVGSPEEDOFANSWER ;;
  }

  dimension: avgspeedofanswer_in_min {
    type: number
    sql: ${TABLE}.AVGSPEEDOFANSWER_in_min ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: callsabandoned {
    type: number
    sql: ${TABLE}.CALLSABANDONED ;;
  }

  dimension: callsabandonedservicelevel {
    type: number
    sql: ${TABLE}.CALLSABANDONEDSERVICELEVEL ;;
  }

  dimension: callsdequeued {
    type: number
    sql: ${TABLE}.CALLSDEQUEUED ;;
  }

  dimension: callshandled {
    type: number
    sql: ${TABLE}.CALLSHANDLED ;;
  }

  dimension: callshandledbyother {
    type: number
    sql: ${TABLE}.CALLSHANDLEDBYOTHER ;;
  }

  dimension: callshandledservicelevel {
    type: number
    sql: ${TABLE}.CALLSHANDLEDSERVICELEVEL ;;
  }

  dimension: callspresented {
    type: number
    sql: ${TABLE}.CALLSPRESENTED ;;
  }

  dimension: csq {
    type: string
    sql: ${TABLE}.csq ;;
  }

  dimension: csq_asa_ {
    type: number
    sql: ${TABLE}.CSQ_Asa_ ;;
  }

  dimension: csqname {
    type: string
    sql: ${TABLE}.CSQNAME ;;
  }

  dimension_group: load {
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
    sql: ${TABLE}.LOAD_DATE ;;
  }

  dimension: maxabandonedperday {
    type: number
    sql: ${TABLE}.MAXABANDONEDPERDAY ;;
  }

  dimension: maxabandonedtime {
    type: number
    sql: ${TABLE}.MAXABANDONEDTIME ;;
  }

  dimension: maxdequeuedtime {
    type: number
    sql: ${TABLE}.MAXDEQUEUEDTIME ;;
  }

  dimension: maxhandletime {
    type: number
    sql: ${TABLE}.MAXHANDLETIME ;;
  }

  dimension: maxqueuetime {
    type: number
    sql: ${TABLE}.MAXQUEUETIME ;;
  }

  dimension: percentabandoned {
    type: number
    sql: ${TABLE}.PERCENTABANDONED ;;
  }

  dimension: percentdequeued {
    type: number
    sql: ${TABLE}.PERCENTDEQUEUED ;;
  }

  dimension: percenthandled {
    type: number
    sql: ${TABLE}.PERCENTHANDLED ;;
  }

  dimension: servicelevel_sec {
    type: number
    sql: ${TABLE}.SERVICELEVEL_SEC ;;
  }

  measure: count {
    type: count
    drill_fields: [csqname]
  }

  measure: Speed_Of_Answer {
    type: average
    sql: ${avgspeedofanswer_in_min} ;;
    value_format: "0.00  \"Minutes\""
  }
}
