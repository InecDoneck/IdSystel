view: client_dist {
  derived_table: {
    sql: select distinct client_cognito_id as cognitoid  from event where event_type = 'VideoStopWatchEvent'
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: cognitoid {
    type: string
    sql: ${TABLE}.cognitoid ;;
  }

  set: detail {
    fields: [cognitoid]
  }
}
