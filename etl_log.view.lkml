view: etl_log {
  sql_table_name: awsma.etl_log ;;

  dimension: action {
    type: string
    sql: ${TABLE}.action ;;
  }

  dimension_group: endtime {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.endtime ;;
  }

  dimension: error_message {
    type: string
    sql: ${TABLE}.error_message ;;
  }

  dimension_group: log_timestamp {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.log_timestamp ;;
  }

  dimension_group: most_recent_arrival {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.most_recent_arrival ;;
  }

  dimension_group: s3_load_timestamp {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.s3_load_timestamp ;;
  }

  dimension_group: starttime {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.starttime ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
