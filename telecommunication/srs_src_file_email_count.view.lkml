view: srs_src_file_email_count {
  sql_table_name: `decisive-triode-363515.telecom.SRS_SRC_FILE_EMAIL_COUNT`
    ;;

  dimension: agent_name {
    type: string
    sql: ${TABLE}.Agent_Name ;;
  }

  dimension: emails_send_count {
    type: number
    sql: ${TABLE}.Emails_Send_count ;;
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

  dimension: readcount {
    type: number
    sql: ${TABLE}.READCOUNT ;;
  }

  dimension: receivecount {
    type: number
    sql: ${TABLE}.RECEIVECOUNT ;;
  }

  dimension: userprincipalname {
    type: string
    sql: ${TABLE}.USERPRINCIPALNAME ;;
  }

  measure: count {
    type: count
    drill_fields: [agent_name, userprincipalname]
  }

  measure: Total_Emails_Received {
    type: sum
    sql: ${receivecount} ;;
  }

  measure: Total_Emails_Read {
    type: sum
    sql: ${readcount} ;;
  }

  measure: Total_Emails_Send {
    type: sum
    sql: ${emails_send_count} ;;
  }
}
