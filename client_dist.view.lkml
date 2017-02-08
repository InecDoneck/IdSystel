view: client_dist {
  derived_table: {
    sql: select arrival_timestamp as sessiontime, date_part(epoch, arrival_timestamp) as secondfrom70  from awsma.event where event_type = 'VideoStopWatchEvent'
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: sessiontime {
    type: date_millisecond125
    sql: ${TABLE}.sessiontime ;;
  }

  dimension: secondfrom70 {
    type: number
    sql: ${TABLE}.secondfrom70 ;;
  }

  dimension_group: sessiontime {
    type: time
    sql: ${TABLE}.sessiontime ;;
  }

  set: detail {
    fields: [sessiontime, secondfrom70]
  }
}
