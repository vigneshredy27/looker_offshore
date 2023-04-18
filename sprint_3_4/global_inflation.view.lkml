view: global_inflation {
  sql_table_name: `decisive-triode-363515.sprint_3_4.global_inflation`
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.Country_Code ;;
  }

  dimension: imf_country_code {
    type: number
    sql: ${TABLE}.IMF_Country_Code ;;
  }

  dimension: indicator_type {
    type: string
    sql: ${TABLE}.Indicator_Type ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}.Note ;;
  }

  dimension: series_name {
    type: string
    sql: ${TABLE}.Series_Name ;;
  }

  dimension: string_field_59 {
    type: string
    sql: ${TABLE}.string_field_59 ;;
  }

  dimension: yaer_1985 {
    type: number
    sql: ${TABLE}.yaer_1985 ;;
  }

  dimension: year_1970 {
    type: string
    sql: ${TABLE}.year_1970 ;;
  }

  dimension: year_1971 {
    type: number
    sql: ${TABLE}.year_1971 ;;
  }

  dimension: year_1972 {
    type: number
    sql: ${TABLE}.year_1972 ;;
  }

  dimension: year_1973 {
    type: number
    sql: ${TABLE}.year_1973 ;;
  }

  dimension: year_1974 {
    type: number
    sql: ${TABLE}.year_1974 ;;
  }

  dimension: year_1975 {
    type: number
    sql: ${TABLE}.year_1975 ;;
  }

  dimension: year_1976 {
    type: number
    sql: ${TABLE}.year_1976 ;;
  }

  dimension: year_1977 {
    type: number
    sql: ${TABLE}.year_1977 ;;
  }

  dimension: year_1978 {
    type: number
    sql: ${TABLE}.year_1978 ;;
  }

  dimension: year_1979 {
    type: number
    sql: ${TABLE}.year_1979 ;;
  }

  dimension: year_1980 {
    type: number
    sql: ${TABLE}.year_1980 ;;
  }

  dimension: year_1981 {
    type: number
    sql: ${TABLE}.year_1981 ;;
  }

  dimension: year_1982 {
    type: number
    sql: ${TABLE}.year_1982 ;;
  }

  dimension: year_1983 {
    type: number
    sql: ${TABLE}.year_1983 ;;
  }

  dimension: year_1984 {
    type: number
    sql: ${TABLE}.year_1984 ;;
  }

  dimension: year_1986 {
    type: number
    sql: ${TABLE}.year_1986 ;;
  }

  dimension: year_1987 {
    type: number
    sql: ${TABLE}.year_1987 ;;
  }

  dimension: year_1988 {
    type: number
    sql: ${TABLE}.year_1988 ;;
  }

  dimension: year_1989 {
    type: number
    sql: ${TABLE}.year_1989 ;;
  }

  dimension: year_1990 {
    type: number
    sql: ${TABLE}.year_1990 ;;
  }

  dimension: year_1991 {
    type: number
    sql: ${TABLE}.year_1991 ;;
  }

  dimension: year_1992 {
    type: number
    sql: ${TABLE}.year_1992 ;;
  }

  dimension: year_1993 {
    type: number
    sql: ${TABLE}.year_1993 ;;
  }

  dimension: year_1994 {
    type: number
    sql: ${TABLE}.year_1994 ;;
  }

  dimension: year_1995 {
    type: number
    sql: ${TABLE}.year_1995 ;;
  }

  dimension: year_1996 {
    type: number
    sql: ${TABLE}.year_1996 ;;
  }

  dimension: year_1997 {
    type: number
    sql: ${TABLE}.year_1997 ;;
  }

  dimension: year_1998 {
    type: number
    sql: ${TABLE}.year_1998 ;;
  }

  dimension: year_1999 {
    type: number
    sql: ${TABLE}.year_1999 ;;
  }

  dimension: year_2000 {
    type: number
    sql: ${TABLE}.year_2000 ;;
  }

  dimension: year_2001 {
    type: number
    sql: ${TABLE}.year_2001 ;;
  }

  dimension: year_2002 {
    type: number
    sql: ${TABLE}.year_2002 ;;
  }

  dimension: year_2003 {
    type: number
    sql: ${TABLE}.year_2003 ;;
  }

  dimension: year_2004 {
    type: number
    sql: ${TABLE}.year_2004 ;;
  }

  dimension: year_2005 {
    type: number
    sql: ${TABLE}.year_2005 ;;
  }

  dimension: year_2006 {
    type: number
    sql: ${TABLE}.year_2006 ;;
  }

  dimension: year_2007 {
    type: number
    sql: ${TABLE}.year_2007 ;;
  }

  dimension: year_2008 {
    type: number
    sql: ${TABLE}.year_2008 ;;
  }

  dimension: year_2009 {
    type: number
    sql: ${TABLE}.year_2009 ;;
  }

  dimension: year_2010 {
    type: number
    sql: ${TABLE}.year_2010 ;;
  }

  dimension: year_2011 {
    type: number
    sql: ${TABLE}.year_2011 ;;
  }

  dimension: year_2012 {
    type: number
    sql: ${TABLE}.year_2012 ;;
  }

  dimension: year_2013 {
    type: number
    sql: ${TABLE}.year_2013 ;;
  }

  dimension: year_2014 {
    type: number
    sql: ${TABLE}.year_2014 ;;
  }

  dimension: year_2015 {
    type: number
    sql: ${TABLE}.year_2015 ;;
  }

  dimension: year_2016 {
    type: number
    sql: ${TABLE}.year_2016 ;;
  }

  dimension: year_2017 {
    type: number
    sql: ${TABLE}.year_2017 ;;
  }

  dimension: year_2018 {
    type: number
    sql: ${TABLE}.year_2018 ;;
  }

  dimension: year_2019 {
    type: number
    sql: ${TABLE}.year_2019 ;;
  }

  dimension: year_2020 {
    type: number
    sql: ${TABLE}.year_2020 ;;
  }

  dimension: year_2021 {
    type: number
    sql: ${TABLE}.year_2021 ;;
  }

  dimension: year_2022 {
    type: number
    sql: ${TABLE}.year_2022 ;;
  }

  measure: count {
    type: count
    drill_fields: [series_name]
  }
}
