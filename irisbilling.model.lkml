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
