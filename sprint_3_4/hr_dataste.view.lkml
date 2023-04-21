view: hr_dataste {
  sql_table_name: `decisive-triode-363515.sprint_3_4.hr_dataste`
    ;;

  dimension: absenteeism {
    type: number
    sql: ${TABLE}.Absenteeism ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.Age ;;
  }

  dimension: attrition {
    type: yesno
    sql: ${TABLE}.Attrition ;;
  }

  dimension: business_travel {
    type: string
    sql: ${TABLE}.BusinessTravel ;;
  }

  dimension_group: date_of_hire {
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
    sql: ${TABLE}.Date_of_Hire ;;
  }

  dimension: date_of_termination {
    type: string
    sql: ${TABLE}.Date_of_termination ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.Department ;;
  }

  dimension: distance_from_home {
    type: number
    sql: ${TABLE}.DistanceFromHome ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  dimension: higher_education {
    type: string
    sql: ${TABLE}.Higher_Education ;;
  }

  dimension: job_involvement {
    type: number
    sql: ${TABLE}.JobInvolvement ;;
  }

  dimension: job_level {
    type: number
    sql: ${TABLE}.JobLevel ;;
  }

  dimension: job_mode {
    type: string
    sql: ${TABLE}.Job_mode ;;
  }

  dimension: job_role {
    type: string
    sql: ${TABLE}.JobRole ;;
  }

  dimension: job_satisfaction {
    type: number
    sql: ${TABLE}.JobSatisfaction ;;
  }

  dimension: leaves {
    type: number
    sql: ${TABLE}.Leaves ;;
  }

  dimension: marital_status {
    type: string
    sql: ${TABLE}.MaritalStatus ;;
  }

  dimension: mode_of_work {
    type: string
    sql: ${TABLE}.Mode_of_work ;;
  }

  dimension: monthly_income {
    type: number
    sql: ${TABLE}.MonthlyIncome ;;
  }

  dimension: num_companies_worked {
    type: number
    sql: ${TABLE}.NumCompaniesWorked ;;
  }

  dimension: over_time {
    type: yesno
    sql: ${TABLE}.OverTime ;;
  }

  dimension: percent_salary_hike {
    type: number
    sql: ${TABLE}.PercentSalaryHike ;;
  }

  dimension: performance_rating {
    type: number
    sql: ${TABLE}.PerformanceRating ;;
  }

  dimension: source_of_hire {
    type: string
    sql: ${TABLE}.Source_of_Hire ;;
  }

  dimension: status_of_leaving {
    type: string
    sql: ${TABLE}.Status_of_leaving ;;
  }

  dimension: stock_option_level {
    type: number
    sql: ${TABLE}.StockOptionLevel ;;
  }

  dimension: total_working_years {
    type: number
    sql: ${TABLE}.TotalWorkingYears ;;
  }

  dimension: training_times_last_year {
    type: number
    sql: ${TABLE}.TrainingTimesLastYear ;;
  }

  dimension: work_accident {
    type: yesno
    sql: ${TABLE}.Work_accident ;;
  }

  dimension: years_at_company {
    type: number
    sql: ${TABLE}.YearsAtCompany ;;
  }

  dimension: years_since_last_promotion {
    type: number
    sql: ${TABLE}.YearsSinceLastPromotion ;;
  }

  dimension: years_with_curr_manager {
    type: number
    sql: ${TABLE}.YearsWithCurrManager ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
