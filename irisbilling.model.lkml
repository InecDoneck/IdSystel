connection: "redshift"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: client_dist {}

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

explore: get_view_video_test {
  cancel_grouping_fields: [get_view_video_test.content_id,
    get_view_video_test.videoname,
    get_view_video_test.videodescr,
    get_view_video_test.descr,
    get_view_video_test.sess_id,
    get_view_video_test.sessiontime_time,
    get_view_video_test.secondfrom70,
    get_view_video_test.videoviewlength,
    get_view_video_test.watcher,
    get_view_video_test.clientowner_id,
    get_view_video_test.clientname,
    get_view_video_test.eventtime,
    get_view_video_test.startsession,
    get_view_video_test.session_id
  ]
}
