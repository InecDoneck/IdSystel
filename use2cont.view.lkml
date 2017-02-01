view: use2cont {
  derived_table: {
    sql: select  client_cognito_id as cognitoid,
        event_timestamp as eventtyme,
        a_videostopwatchvideoid as contentid
from event where event_type = 'VideoStopWatchEvent'
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

  dimension_group: eventtyme {
    type: time
    sql: ${TABLE}.eventtyme ;;
  }

  dimension: contentid {
    type: string
    sql: ${TABLE}.contentid ;;
  }

  set: detail {
    fields: [cognitoid, eventtyme_time, contentid]
  }
}
