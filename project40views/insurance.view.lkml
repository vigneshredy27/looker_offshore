view: insurance {
  sql_table_name: `decisive-triode-363515.offshore.insurance`
    ;;

  dimension: age {
    type: number
    sql: ${TABLE}.Age ;;
  }

  dimension: amount_of_credit_cards {
    type: number
    sql: ${TABLE}.Amount_of_Credit_Cards ;;
  }

  dimension: bank_deposits {
    type: number
    sql: ${TABLE}.Bank_Deposits ;;
  }

  dimension: bank_loans {
    type: number
    sql: ${TABLE}.Bank_Loans ;;
  }

  dimension: banking_contact {
    type: string
    sql: ${TABLE}.Banking_Contact ;;
  }

  dimension: banking_relationship {
    type: string
    sql: ${TABLE}.Banking_Relationship ;;
  }

  dimension: business_lending {
    type: number
    sql: ${TABLE}.Business_Lending ;;
  }

  dimension: checking_accounts {
    type: number
    sql: ${TABLE}.Checking_Accounts ;;
  }

  dimension: client_id {
    type: string
    sql: ${TABLE}.Client_ID ;;
  }

  dimension: credit_card_balance {
    type: number
    sql: ${TABLE}.Credit_Card_Balance ;;
  }

  dimension: estimated_income {
    type: number
    sql: ${TABLE}.Estimated_Income ;;
  }

  dimension: fee_structure {
    type: string
    sql: ${TABLE}.Fee_Structure ;;
  }

  dimension: foreign_currency_account {
    type: number
    sql: ${TABLE}.Foreign_Currency_Account ;;
  }

  dimension: investment_advisor {
    type: string
    sql: ${TABLE}.Investment_Advisor ;;
  }

  dimension_group: joined_bank {
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
    sql: ${TABLE}.Joined_Bank ;;
  }

  dimension_group: last_contact {
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
    sql: ${TABLE}.Last_Contact ;;
  }

  dimension_group: last_meeting {
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
    sql: ${TABLE}.Last_Meeting ;;
  }

  dimension: location_id {
    type: number
    sql: ${TABLE}.Location_ID ;;
  }

  dimension: loyalty_classification {
    type: string
    sql: ${TABLE}.Loyalty_Classification ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: nationality {
    type: string
    sql: ${TABLE}.Nationality ;;
  }

  dimension: occupation {
    type: string
    sql: ${TABLE}.Occupation ;;
  }

  dimension: properties_owned {
    type: number
    sql: ${TABLE}.Properties_Owned ;;
  }

  dimension: risk_weighting {
    type: number
    sql: ${TABLE}.Risk_Weighting ;;
  }

  dimension: saving_accounts {
    type: number
    sql: ${TABLE}.Saving_Accounts ;;
  }

  dimension: sex {
    type: string
    sql: ${TABLE}.Sex ;;
  }

  dimension: superannuation_savings {
    type: number
    sql: ${TABLE}.Superannuation_Savings ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
