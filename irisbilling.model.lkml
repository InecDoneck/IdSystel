connection: "redshift"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: etl_log {}

explore: event {}

explore: event_staging {}

explore: old_event_table {}

explore: client_dist {}

explore: use2cont {}

explore: get_view_video {
  cancel_grouping_fields: [get_view_video.content_id,
    get_view_video.videoname,
    get_view_video.videodescr,
    get_view_video.descr,
    get_view_video.sess_id,
    get_view_video.sessiontime_time,
    get_view_video.secondfrom70,
    get_view_video.videoviewlength,
    get_view_video.watcher,
    get_view_video.clientowner_id,
    get_view_video.clientname,
    get_view_video.eventtime,
    get_view_video.startsession,
    get_view_video.session_id
  ]
}
