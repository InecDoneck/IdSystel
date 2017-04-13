view: client_content {
  derived_table: {
    sql: select view_event.content_id,
       view_event.watcher,
       view_event.clientowner_id,
       view_event.secondfrom70
    from
      (select
       a_videostopwatchvideoid as content_id,
       coalesce(a_videostopwatchvideoname, '-') as videoname,
       coalesce(a_videostopwatchvideodescription, '-') as videodescr,
       coalesce(a_videostopwatchwatcherusername, '-') as descr,
       '' as sess_id,
       arrival_timestamp as sessiontime,
      date_part(epoch, arrival_timestamp) as secondfrom70,
      case when coalesce(m_videostopwatchplaybackstoppedtime, 0) <= 0 then
           m_videostopwatchvideolength - coalesce(m_videostopwatchplaybackstartedtime, 0)
       else
           m_videostopwatchplaybackstoppedtime - coalesce(m_videostopwatchplaybackstartedtime, 0)
       end as videoviewlength,
         a_videostopwatchwatcheridentityid as watcher,
         a_videostopwatchvideocreatorid as clientowner_id,
         coalesce(a_videostopwatchwatcherusername, '-') as clientname,
         event_timestamp as eventtime,
         session_start_timestamp as startsession,
         session_id as session_id
from awsma.event--awsma.event
where event_type = 'VideoStopWatchEvent'
and a_videostopwatchvideocreatorid is not null
and a_videostopwatchvideocreatorid <> a_videostopwatchwatcheridentityid
) as view_event
where view_event.videoviewlength > 0
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

  dimension: watcher {
    type: string
    sql: ${TABLE}.watcher ;;
  }

  dimension: clientowner_id {
    type: string
    sql: ${TABLE}.clientowner_id ;;
  }

  dimension: secondfrom70 {
    type: number
    sql: ${TABLE}.secondfrom70 ;;
  }

  set: detail {
    fields: [content_id, watcher, clientowner_id, secondfrom70]
  }
}
