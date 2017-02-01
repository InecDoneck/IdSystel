view: get_view_video {
  derived_table: {
    sql: select a_videostopwatchvideoid as content_id,
       a_videostopwatchvideoname as videoname,
       a_videostopwatchvideodescription as videodescr,
       a_videostopwatchwatcherusername as descr,
       '' as sess_id,
       session_start_timestamp as sessiontime,
       trunc((random() * 999)+1) as videoviewlength,
         client_cognito_id as watcher,
         application_version_name as clientowner_id
from event
where event_type = 'VideoStopWatchEvent'
order by clientowner_id,  client_cognito_id
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: content_id {
    type: string
    sql: ${TABLE}.content_id ;;
  }

  dimension: videoname {
    type: string
    sql: ${TABLE}.videoname ;;
  }

  dimension: videodescr {
    type: string
    sql: ${TABLE}.videodescr ;;
  }

  dimension: descr {
    type: string
    sql: ${TABLE}.descr ;;
  }

  dimension: sess_id {
    type: string
    sql: ${TABLE}.sess_id ;;
  }

  dimension_group: sessiontime {
    type: time
    sql: ${TABLE}.sessiontime ;;
  }

  dimension: videoviewlength {
    type: number
    sql: ${TABLE}.videoviewlength ;;
  }

  dimension: watcher {
    type: string
    sql: ${TABLE}.watcher ;;
  }

  dimension: clientowner_id {
    type: string
    sql: ${TABLE}.clientowner_id ;;
  }

  set: detail {
    fields: [
      content_id,
      videoname,
      videodescr,
      descr,
      sess_id,
      sessiontime_time,
      videoviewlength,
      watcher,
      clientowner_id
    ]
  }
}
