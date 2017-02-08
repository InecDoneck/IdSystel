view: client_dist {
  derived_table: {
    sql: select arrival_timestamp as sessiontime  from awsma.event where event_type = 'VideoStopWatchEvent'
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: sessiontime {
    type: string
    sql: ${TABLE}.sessiontime ;;
  }

  set: detail {
    fields: [sessiontime]
  }
}
