view: get_view_video {
  derived_table: {
    sql: select
       a_videostopwatchvideoid as content_id,
       coalesce(a_videostopwatchvideoname, '-') as videoname,
       coalesce(a_videostopwatchvideodescription, '-') as videodescr,
       coalesce(a_videostopwatchwatcherusername, '-') as descr,
       '' as sess_id,
       arrival_timestamp as sessiontime,
      case when coalesce(m_videostopwatchplaybackstoppedtime, 0) <= 0 then
           m_videostopwatchvideolength - coalesce(m_videostopwatchplaybackstartedtime, 0)
       else
           m_videostopwatchplaybackstoppedtime - coalesce(m_videostopwatchplaybackstartedtime, 0)
       end as videoviewlength,
         a_videostopwatchwatcheridentityid as watcher,
         a_videostopwatchvideocreatorid as clientowner_id,
         coalesce(a_videostopwatchwatcherusername, '-') as clientname
from awsma.event
where event_type = 'VideoStopWatchEvent'
and a_videostopwatchvideocreatorid is not null
order by arrival_timestamp, clientowner_id,  a_videostopwatchwatcheridentityid
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
