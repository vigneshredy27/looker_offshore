view: ipl_dataset {
  sql_table_name: `decisive-triode-363515.offshore.ipl_dataset`
    ;;

  dimension_group: date {
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
    sql: ${TABLE}.Date ;;
  }

  dimension: full_scorecard {
    type: string
    sql: ${TABLE}.full_scorecard ;;
  }

  dimension: man_of_the_match {
    type: string
    sql: ${TABLE}.man_of_the_match ;;
  }

  dimension: margin {
    type: string
    sql: ${TABLE}.margin ;;
  }

  dimension: place {
    type: string
    sql: ${TABLE}.place ;;
  }

  dimension: stadium {
    type: string
    sql: ${TABLE}.stadium ;;
  }

  dimension: team1 {
    type: string
    sql: ${TABLE}.team1 ;;
  }

  dimension: team1_score {
    type: number
    sql: ${TABLE}.team1_score ;;
  }

  dimension: team2 {
    type: string
    sql: ${TABLE}.team2 ;;
  }

  dimension: team2_score {
    type: number
    sql: ${TABLE}.team2_score ;;
  }

  dimension: toss_choice {
    type: string
    sql: ${TABLE}.toss_choice ;;
  }

  dimension: toss_winner {
    type: string
    sql: ${TABLE}.toss_winner ;;
  }

  dimension: winner {
    type: string
    sql: ${TABLE}.winner ;;
  }

  dimension: team_combined_average {
    type: number
    sql: (${team1_score}+${team2_score})/2 ;;
  }

  dimension: Loosing_Team {
    type: string
    sql: CASE
    WHEN ${TABLE}.winner = ${TABLE}.team1 THEN ${TABLE}.team2
    ELSE ${TABLE}.team1
    END ;;
  }

  dimension: Toss_Win_Loss {
    type: string
    sql: CASE
          WHEN ${toss_winner} = ${winner} THEN 'Won The Toss'
          ELSE 'Lost The Toss'
        END ;;
  }

  dimension: Toss_Loosing_Team {
    type: string
    sql: CASE
          WHEN ${toss_winner} = ${TABLE}.team1 THEN ${TABLE}.team2
          ELSE ${TABLE}.team1
          END ;;
  }

  dimension: Team_Win_Loss {
    type: string
    sql: CASE
          WHEN ${team1} = ${winner} THEN 'Matches Won'
          ELSE 'Matches Lost'
        END ;;
  }

  dimension: Team {
    type: string
    sql: ${winner} ;;
  }



  measure: count {
    type: count
    drill_fields: []
    label: "Total Matches Won"
  }

  measure: Avg_team_score {
    type: average
    sql: ${team_combined_average} ;;
    value_format: "0.##"
  }

  measure: Matches_Won_By_The_Team {
    type: count
    drill_fields: [winner]
    label: "Number of Matches Won"
  }

  measure: Matches_Lost_By_The_Team {
    type: count
    drill_fields: [Loosing_Team]
    label: "Number of Matches Lost"
  }

  measure: toss_count {
    type: count
    # sql: ${Toss_Win_Loss} ;;
    drill_fields: [toss_choice]
  }

  measure: Number_of_Matches_Played_in_Stadiums {
    type: count
    # sql: ${place} ;;
    label: "Number of Matches Played"
    drill_fields: [place]
  }

  measure: Most_Matches_Played {
    type: count
    # sql: ${winner} ;;
    drill_fields: [winner]
  }

  measure: Man_Of_The_Match_Count {
    type: count
    drill_fields: [man_of_the_match]
    label: "Number of Man of the Match Trophies Won"
  }

  measure: Total_Matches_Played {
    type: count
    drill_fields: [total_matches_count*]
  }

  set: total_matches_count {
    fields: [Team]
  }

}
