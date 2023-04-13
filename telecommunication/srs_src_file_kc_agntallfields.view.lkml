view: srs_src_file_kc_agntallfields {
  sql_table_name: `decisive-triode-363515.telecom.SRS_SRC_FILE_KC_AGNTALLFIELDS`
    ;;

  dimension: acdconference {
    type: number
    sql: ${TABLE}.ACDCONFERENCE ;;
  }

  dimension: acdtransferin {
    type: number
    sql: ${TABLE}.ACDTRANSFERIN ;;
  }

  dimension: acdtransferout {
    type: number
    sql: ${TABLE}.ACDTRANSFEROUT ;;
  }

  dimension: agentextension {
    type: number
    sql: ${TABLE}.AGENTEXTENSION ;;
  }

  dimension: agentid {
    type: string
    sql: ${TABLE}.AGENTID ;;
  }

  dimension: agentname {
    type: string
    sql: ${TABLE}.AGENTNAME ;;
  }

  dimension: average_inbound_talk_time {
    type: number
    sql: ${TABLE}.Average_Inbound_talk_time ;;
  }

  dimension: average_outbound_talk_time {
    type: number
    sql: ${TABLE}.Average_Outbound_talk_time ;;
  }

  dimension: avghandletime {
    type: number
    sql: ${TABLE}.AVGHANDLETIME ;;
  }

  dimension: avgholdtime {
    type: number
    sql: ${TABLE}.AVGHOLDTIME ;;
  }

  dimension: avgidletime {
    type: number
    sql: ${TABLE}.AVGIDLETIME ;;
  }

  dimension: avgloggedintime {
    type: number
    sql: ${TABLE}.AVGLOGGEDINTIME ;;
  }

  dimension: avgtalktime {
    type: number
    sql: ${TABLE}.AVGTALKTIME ;;
  }

  dimension: avgworktime {
    type: number
    sql: ${TABLE}.AVGWORKTIME ;;
  }

  dimension: callsabandoned {
    type: number
    sql: ${TABLE}.CALLSABANDONED ;;
  }

  dimension: callshandled {
    type: number
    sql: ${TABLE}.CALLSHANDLED ;;
  }

  dimension: callspresented {
    type: number
    sql: ${TABLE}.CALLSPRESENTED ;;
  }

  dimension: handleratio {
    type: number
    sql: (${TABLE}.HANDLERATIO)*100 ;;
    value_format: "0.00\%"
  }

  dimension: inboundacdavgholdtime {
    type: number
    sql: ${TABLE}.INBOUNDACDAVGHOLDTIME ;;
  }

  dimension: inboundacdavgtalktime {
    type: number
    sql: ${TABLE}.INBOUNDACDAVGTALKTIME ;;
  }

  dimension: inboundacdavgworktime {
    type: number
    sql: ${TABLE}.INBOUNDACDAVGWORKTIME ;;
  }

  dimension: inboundacdtotal {
    type: number
    sql: ${TABLE}.INBOUNDACDTOTAL ;;
  }

  dimension: inboundnonacdonipccavgtalktime {
    type: number
    sql: ${TABLE}.INBOUNDNONACDONIPCCAVGTALKTIME ;;
  }

  dimension: inboundnonacdonipccmaxtktim {
    type: number
    sql: ${TABLE}.INBOUNDNONACDONIPCCMAXTKTIM ;;
  }

  dimension: inboundnonacdonipcctotal {
    type: number
    sql: ${TABLE}.INBOUNDNONACDONIPCCTOTAL ;;
  }

  dimension: inboundnonacdonnonipccavgtktim {
    type: number
    sql: ${TABLE}.INBOUNDNONACDONNONIPCCAVGTKTIM ;;
  }

  dimension: inboundnonacdonnonipccmaxtktim {
    type: number
    sql: ${TABLE}.INBOUNDNONACDONNONIPCCMAXTKTIM ;;
  }

  dimension: inboundnonacdonnonipcctotal {
    type: number
    sql: ${TABLE}.INBOUNDNONACDONNONIPCCTOTAL ;;
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

  dimension: maxhandletime {
    type: number
    sql: ${TABLE}.MAXHANDLETIME ;;
  }

  dimension: maxholdtime {
    type: number
    sql: ${TABLE}.MAXHOLDTIME ;;
  }

  dimension: maxidletime {
    type: number
    sql: ${TABLE}.MAXIDLETIME ;;
  }

  dimension: maxtalktime {
    type: number
    sql: ${TABLE}.MAXTALKTIME ;;
  }

  dimension: maxworktime {
    type: number
    sql: ${TABLE}.MAXWORKTIME ;;
  }

  dimension: new {
    type: number
    sql: ${TABLE}.`New` ;;
  }

  dimension: nonacdconference {
    type: number
    sql: ${TABLE}.NONACDCONFERENCE ;;
  }

  dimension: nonacdtransferin {
    type: number
    sql: ${TABLE}.NONACDTRANSFERIN ;;
  }

  dimension: nonacdtransferout {
    type: number
    sql: ${TABLE}.NONACDTRANSFEROUT ;;
  }

  dimension: notreadytime {
    type: number
    sql: ${TABLE}.NOTREADYTIME ;;
  }

  dimension: notreadytime_percent {
    type: number
    sql: ${TABLE}.NOTREADYTIME_PERCENT ;;
  }

  dimension: outboundonipccavgcalltime {
    type: number
    sql: ${TABLE}.OUTBOUNDONIPCCAVGCALLTIME ;;
  }

  dimension: outboundonipccmaxcaltime {
    type: number
    sql: ${TABLE}.OUTBOUNDONIPCCMAXCALTIME ;;
  }

  dimension: outboundonipcctotal {
    type: number
    sql: ${TABLE}.OUTBOUNDONIPCCTOTAL ;;
  }

  dimension: outboundonnonipccavgcalltime {
    type: number
    sql: ${TABLE}.OUTBOUNDONNONIPCCAVGCALLTIME ;;
  }

  dimension: outboundonnonipccmaxcalltime {
    type: number
    sql: ${TABLE}.OUTBOUNDONNONIPCCMAXCALLTIME ;;
  }

  dimension: outboundonnonipcctotal {
    type: number
    sql: ${TABLE}.OUTBOUNDONNONIPCCTOTAL ;;
  }

  dimension: readytime {
    type: number
    sql: ${TABLE}.READYTIME ;;
  }

  dimension: readytime_percent {
    type: number
    sql: ${TABLE}.READYTIME_PERCENT ;;
  }

  dimension: reservedtime {
    type: number
    sql: ${TABLE}.RESERVEDTIME ;;
  }

  dimension: reservedtime_percent {
    type: number
    sql: ${TABLE}.RESERVEDTIME_PERCENT ;;
  }

  dimension: talkingtime {
    type: number
    sql: ${TABLE}.TALKINGTIME ;;
  }

  dimension: talkingtime_percent {
    type: number
    sql: ${TABLE}.TALKINGTIME_PERCENT ;;
  }

  dimension: total_cals {
    type: number
    sql: ${TABLE}.Total_cals ;;
  }

  dimension: totalinbound {
    type: number
    sql: ${TABLE}.TOTALINBOUND ;;
  }

  dimension: totalloggedintime {
    type: number
    sql: ${TABLE}.TOTALLOGGEDINTIME ;;
  }

  dimension: worktime {
    type: number
    sql: ${TABLE}.WORKTIME ;;
  }

  dimension: worktime_percent {
    type: number
    sql: ${TABLE}.WORKTIME_PERCENT ;;
  }

  measure: count {
    type: count
    drill_fields: [agentname]
  }

  measure: Total_Calls_Handled_by_Agent {
    type: sum
    sql: ${callshandled} ;;
  }

  measure: Total_Calls_Presented_by_Agent {
    type: sum
    sql: ${callspresented} ;;
  }

  measure: Total_Calls_Abandoned_by_Agent {
    type: sum
    sql: ${callsabandoned} ;;
  }


  measure: Calls_Presented_by_Abandoned_Ratio {
    type: sum
    sql: ${handleratio} ;;
    value_format: "0.00\%"
  }

  measure: Avg_Calls_Handled_Ratio {
    type: average
    sql: ${handleratio} ;;
    value_format: "0.00\%"
  }

  measure: Totals_Calls {
    type: sum
    sql: ${total_cals} ;;
  }
}
