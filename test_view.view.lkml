view: test_view {
  derived_table: {
    sql: SELECT
        event.a_photocreatedcreatoridentityid  AS "event.a_photocreatedcreatoridentityid",
        event.a_photocreatedcreatorusername  AS "event.a_photocreatedcreatorusername",
        event.event_type  AS "event.event_type",
        COUNT(*) AS "event.count"
      FROM awsma.event  AS event

      WHERE
        (((event.a_photocreatedcreatoridentityid ) IS NOT NULL))
      GROUP BY 1,2,3
      ORDER BY 4 DESC
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: event_a_photocreatedcreatoridentityid {
    type: string
    sql: ${TABLE}."event.a_photocreatedcreatoridentityid" ;;
  }

  dimension: event_a_photocreatedcreatorusername {
    type: string
    sql: ${TABLE}."event.a_photocreatedcreatorusername" ;;
  }

  dimension: event_event_type {
    type: string
    sql: ${TABLE}."event.event_type" ;;
  }

  dimension: event_count {
    type: number
    sql: ${TABLE}."event.count" ;;
  }

  set: detail {
    fields: [event_a_photocreatedcreatoridentityid, event_a_photocreatedcreatorusername, event_event_type, event_count]
  }
}
