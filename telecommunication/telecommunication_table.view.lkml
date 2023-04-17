view: telecommunication_table {
  sql_table_name: `decisive-triode-363515.telecom.telecommunication_table`
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

  dimension: agent_name {
    type: string
    sql: ${TABLE}.Agent_Name ;;
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

  dimension: agents_count {
    type: number
    sql: ${TABLE}.Agents_count ;;
  }

  dimension: agents_name {
    type: string
    sql: ${TABLE}.agents_name ;;
  }

  dimension: asa {
    type: number
    sql: ${TABLE}.ASA ;;
  }

  dimension: average_inbound_talk_time {
    type: number
    sql: ${TABLE}.Average_Inbound_talk_time ;;
  }

  dimension: average_outbound_talk_time {
    type: number
    sql: ${TABLE}.Average_Outbound_talk_time ;;
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

  dimension: avghandletime_1 {
    type: number
    sql: ${TABLE}.AVGHANDLETIME_1 ;;
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

  dimension: avgtalktime {
    type: number
    sql: ${TABLE}.AVGTALKTIME ;;
  }

  dimension: avgworktime {
    type: number
    sql: ${TABLE}.AVGWORKTIME ;;
  }

  dimension: brands {
    type: string
    sql: ${TABLE}.brands ;;
  }

  dimension: callsabandoned {
    type: number
    sql: ${TABLE}.CALLSABANDONED ;;
  }

  dimension: callsabandoned_1 {
    type: number
    sql: ${TABLE}.CALLSABANDONED_1 ;;
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

  dimension: callshandled_1 {
    type: number
    sql: ${TABLE}.CALLSHANDLED_1 ;;
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

  dimension: callspresented_1 {
    type: number
    sql: ${TABLE}.CALLSPRESENTED_1 ;;
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

  dimension: emails_send_count {
    type: number
    sql: ${TABLE}.Emails_Send_count ;;
  }

  dimension: handleratio {
    type: number
    sql: ${TABLE}.HANDLERATIO ;;
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

  dimension: maxhandletime_1 {
    type: number
    sql: ${TABLE}.MAXHANDLETIME_1 ;;
  }

  dimension: maxholdtime {
    type: number
    sql: ${TABLE}.MAXHOLDTIME ;;
  }

  dimension: maxidletime {
    type: number
    sql: ${TABLE}.MAXIDLETIME ;;
  }

  dimension: maxqueuetime {
    type: number
    sql: ${TABLE}.MAXQUEUETIME ;;
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

  dimension: readcount {
    type: number
    sql: ${TABLE}.READCOUNT ;;
  }

  dimension: readytime {
    type: number
    sql: ${TABLE}.READYTIME ;;
  }

  dimension: readytime_percent {
    type: number
    sql: ${TABLE}.READYTIME_PERCENT ;;
  }

  dimension: receivecount {
    type: number
    sql: ${TABLE}.RECEIVECOUNT ;;
  }

  dimension: reservedtime {
    type: number
    sql: ${TABLE}.RESERVEDTIME ;;
  }

  dimension: reservedtime_percent {
    type: number
    sql: ${TABLE}.RESERVEDTIME_PERCENT ;;
  }

  dimension: servicelevel_sec {
    type: number
    sql: ${TABLE}.SERVICELEVEL_SEC ;;
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

  dimension: userprincipalname {
    type: string
    sql: ${TABLE}.USERPRINCIPALNAME ;;
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
    drill_fields: [agent_name, userprincipalname, csqname, agentname, agents_name]
  }

  measure: Average_Hours_Logged {
    type: average
    sql: ${totalloggedintime} ;;
  }


}
