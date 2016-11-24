view: event_staging {
  sql_table_name: awsma.event_staging ;;

  dimension: a_photocreatedcreatoridentityid {
    type: string
    sql: ${TABLE}.a_photocreatedcreatoridentityid ;;
  }

  dimension: a_photocreatedcreatorusername {
    type: string
    sql: ${TABLE}.a_photocreatedcreatorusername ;;
  }

  dimension: a_photocreateddescription {
    type: string
    sql: ${TABLE}.a_photocreateddescription ;;
  }

  dimension: a_photocreatedevent {
    type: string
    sql: ${TABLE}.a_photocreatedevent ;;
  }

  dimension: a_photocreatedid {
    type: string
    sql: ${TABLE}.a_photocreatedid ;;
  }

  dimension: a_photoviewdescription {
    type: string
    sql: ${TABLE}.a_photoviewdescription ;;
  }

  dimension: a_photoviewevent {
    type: string
    sql: ${TABLE}.a_photoviewevent ;;
  }

  dimension: a_photoviewid {
    type: string
    sql: ${TABLE}.a_photoviewid ;;
  }

  dimension: a_photoviewidentityid {
    type: string
    sql: ${TABLE}.a_photoviewidentityid ;;
  }

  dimension: a_photoviewtype {
    type: string
    sql: ${TABLE}.a_photoviewtype ;;
  }

  dimension: a_photoviewusername {
    type: string
    sql: ${TABLE}.a_photoviewusername ;;
  }

  dimension: a_searchevent {
    type: string
    sql: ${TABLE}.a_searchevent ;;
  }

  dimension: a_searchidentityid {
    type: string
    sql: ${TABLE}.a_searchidentityid ;;
  }

  dimension: a_searchquery {
    type: string
    sql: ${TABLE}.a_searchquery ;;
  }

  dimension: a_searchusername {
    type: string
    sql: ${TABLE}.a_searchusername ;;
  }

  dimension: a_shareevent {
    type: string
    sql: ${TABLE}.a_shareevent ;;
  }

  dimension: a_shareidentityid {
    type: string
    sql: ${TABLE}.a_shareidentityid ;;
  }

  dimension: a_sharemethod {
    type: string
    sql: ${TABLE}.a_sharemethod ;;
  }

  dimension: a_sharephotoevent {
    type: string
    sql: ${TABLE}.a_sharephotoevent ;;
  }

  dimension: a_sharephotoid {
    type: string
    sql: ${TABLE}.a_sharephotoid ;;
  }

  dimension: a_sharephotoidentityid {
    type: string
    sql: ${TABLE}.a_sharephotoidentityid ;;
  }

  dimension: a_sharephotomethod {
    type: string
    sql: ${TABLE}.a_sharephotomethod ;;
  }

  dimension: a_sharephotoname {
    type: string
    sql: ${TABLE}.a_sharephotoname ;;
  }

  dimension: a_sharephotousername {
    type: string
    sql: ${TABLE}.a_sharephotousername ;;
  }

  dimension: a_shareusername {
    type: string
    sql: ${TABLE}.a_shareusername ;;
  }

  dimension: a_sharevideoid {
    type: string
    sql: ${TABLE}.a_sharevideoid ;;
  }

  dimension: a_sharevideoname {
    type: string
    sql: ${TABLE}.a_sharevideoname ;;
  }

  dimension: a_sharevideotype {
    type: string
    sql: ${TABLE}.a_sharevideotype ;;
  }

  dimension: a_sharevideotypeofvideo {
    type: string
    sql: ${TABLE}.a_sharevideotypeofvideo ;;
  }

  dimension: a_streamcreatedevent {
    type: string
    sql: ${TABLE}.a_streamcreatedevent ;;
  }

  dimension: a_streamvideocreatoridentityid {
    type: string
    sql: ${TABLE}.a_streamvideocreatoridentityid ;;
  }

  dimension: a_streamvideocreatorusername {
    type: string
    sql: ${TABLE}.a_streamvideocreatorusername ;;
  }

  dimension: a_streamvideodescription {
    type: string
    sql: ${TABLE}.a_streamvideodescription ;;
  }

  dimension: a_streamvideoid {
    type: string
    sql: ${TABLE}.a_streamvideoid ;;
  }

  dimension: a_streamvideoprimaryhashtag {
    type: string
    sql: ${TABLE}.a_streamvideoprimaryhashtag ;;
  }

  dimension: a_streamvideotype {
    type: string
    sql: ${TABLE}.a_streamvideotype ;;
  }

  dimension: a_userloggedinevent {
    type: string
    sql: ${TABLE}.a_userloggedinevent ;;
  }

  dimension: a_userloggedinidentityid {
    type: string
    sql: ${TABLE}.a_userloggedinidentityid ;;
  }

  dimension: a_userloggedinusername {
    type: string
    sql: ${TABLE}.a_userloggedinusername ;;
  }

  dimension: a_videostopwatchevent {
    type: string
    sql: ${TABLE}.a_videostopwatchevent ;;
  }

  dimension: a_videostopwatchplaybackstoppedtime {
    type: string
    sql: ${TABLE}.a_videostopwatchplaybackstoppedtime ;;
  }

  dimension: a_videostopwatchvideodescription {
    type: string
    sql: ${TABLE}.a_videostopwatchvideodescription ;;
  }

  dimension: a_videostopwatchvideoid {
    type: string
    sql: ${TABLE}.a_videostopwatchvideoid ;;
  }

  dimension: a_videostopwatchvideolength {
    type: string
    sql: ${TABLE}.a_videostopwatchvideolength ;;
  }

  dimension: a_videostopwatchvideoname {
    type: string
    sql: ${TABLE}.a_videostopwatchvideoname ;;
  }

  dimension: a_videostopwatchvideotype {
    type: string
    sql: ${TABLE}.a_videostopwatchvideotype ;;
  }

  dimension: a_videostopwatchwatcheridentityid {
    type: string
    sql: ${TABLE}.a_videostopwatchwatcheridentityid ;;
  }

  dimension: a_videostopwatchwatcherusername {
    type: string
    sql: ${TABLE}.a_videostopwatchwatcherusername ;;
  }

  dimension: a_videoviewdescription {
    type: string
    sql: ${TABLE}.a_videoviewdescription ;;
  }

  dimension: a_videoviewevent {
    type: string
    sql: ${TABLE}.a_videoviewevent ;;
  }

  dimension: a_videoviewid {
    type: string
    sql: ${TABLE}.a_videoviewid ;;
  }

  dimension: a_videoviewidentityid {
    type: string
    sql: ${TABLE}.a_videoviewidentityid ;;
  }

  dimension: a_videoviewname {
    type: string
    sql: ${TABLE}.a_videoviewname ;;
  }

  dimension: a_videoviewtype {
    type: string
    sql: ${TABLE}.a_videoviewtype ;;
  }

  dimension: a_videoviewusername {
    type: string
    sql: ${TABLE}.a_videoviewusername ;;
  }

  dimension: application_app_id {
    type: string
    sql: ${TABLE}.application_app_id ;;
  }

  dimension: application_cognito_identity_pool_id {
    type: string
    sql: ${TABLE}.application_cognito_identity_pool_id ;;
  }

  dimension: application_package_name {
    type: string
    sql: ${TABLE}.application_package_name ;;
  }

  dimension: application_sdk_name {
    type: string
    sql: ${TABLE}.application_sdk_name ;;
  }

  dimension: application_sdk_version {
    type: string
    sql: ${TABLE}.application_sdk_version ;;
  }

  dimension: application_title {
    type: string
    sql: ${TABLE}.application_title ;;
  }

  dimension: application_version_code {
    type: string
    sql: ${TABLE}.application_version_code ;;
  }

  dimension: application_version_name {
    type: string
    sql: ${TABLE}.application_version_name ;;
  }

  dimension_group: arrival_timestamp {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.arrival_timestamp ;;
  }

  dimension: client_cognito_id {
    type: string
    sql: ${TABLE}.client_cognito_id ;;
  }

  dimension: client_id {
    type: string
    sql: ${TABLE}.client_id ;;
  }

  dimension: device_locale_code {
    type: string
    sql: ${TABLE}.device_locale_code ;;
  }

  dimension: device_locale_country {
    type: string
    sql: ${TABLE}.device_locale_country ;;
  }

  dimension: device_locale_language {
    type: string
    sql: ${TABLE}.device_locale_language ;;
  }

  dimension: device_make {
    type: string
    sql: ${TABLE}.device_make ;;
  }

  dimension: device_model {
    type: string
    sql: ${TABLE}.device_model ;;
  }

  dimension: device_platform_name {
    type: string
    sql: ${TABLE}.device_platform_name ;;
  }

  dimension: device_platform_version {
    type: string
    sql: ${TABLE}.device_platform_version ;;
  }

  dimension_group: event_timestamp {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.event_timestamp ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.event_type ;;
  }

  dimension: event_version {
    type: string
    sql: ${TABLE}.event_version ;;
  }

  dimension: m_photocreatedlatitude {
    type: number
    sql: ${TABLE}.m_photocreatedlatitude ;;
  }

  dimension: m_photocreatedlongitude {
    type: number
    sql: ${TABLE}.m_photocreatedlongitude ;;
  }

  dimension: m_photoviewlatitude {
    type: number
    sql: ${TABLE}.m_photoviewlatitude ;;
  }

  dimension: m_photoviewlongitude {
    type: number
    sql: ${TABLE}.m_photoviewlongitude ;;
  }

  dimension: m_searchlatitude {
    type: number
    sql: ${TABLE}.m_searchlatitude ;;
  }

  dimension: m_searchlongitude {
    type: number
    sql: ${TABLE}.m_searchlongitude ;;
  }

  dimension: m_sharelatitude {
    type: number
    sql: ${TABLE}.m_sharelatitude ;;
  }

  dimension: m_sharelongitude {
    type: number
    sql: ${TABLE}.m_sharelongitude ;;
  }

  dimension: m_sharephotolatitude {
    type: number
    sql: ${TABLE}.m_sharephotolatitude ;;
  }

  dimension: m_sharephotolongitude {
    type: number
    sql: ${TABLE}.m_sharephotolongitude ;;
  }

  dimension: m_streamlatitude {
    type: number
    sql: ${TABLE}.m_streamlatitude ;;
  }

  dimension: m_streamlongitude {
    type: number
    sql: ${TABLE}.m_streamlongitude ;;
  }

  dimension: m_userloggedinlatitude {
    type: number
    sql: ${TABLE}.m_userloggedinlatitude ;;
  }

  dimension: m_userloggedinlongitude {
    type: number
    sql: ${TABLE}.m_userloggedinlongitude ;;
  }

  dimension: m_videostopwatchlatitude {
    type: number
    sql: ${TABLE}.m_videostopwatchlatitude ;;
  }

  dimension: m_videostopwatchlongitude {
    type: number
    sql: ${TABLE}.m_videostopwatchlongitude ;;
  }

  dimension: m_videoviewlatitude {
    type: number
    sql: ${TABLE}.m_videoviewlatitude ;;
  }

  dimension: m_videoviewlongitude {
    type: number
    sql: ${TABLE}.m_videoviewlongitude ;;
  }

  dimension: monetization_transaction_id {
    type: string
    sql: ${TABLE}.monetization_transaction_id ;;
  }

  dimension: monetization_transaction_item_id {
    type: string
    sql: ${TABLE}.monetization_transaction_item_id ;;
  }

  dimension: monetization_transaction_price_amount {
    type: number
    sql: ${TABLE}.monetization_transaction_price_amount ;;
  }

  dimension: monetization_transaction_price_currency_code {
    type: string
    sql: ${TABLE}.monetization_transaction_price_currency_code ;;
  }

  dimension: monetization_transaction_price_currency_symbol {
    type: string
    sql: ${TABLE}.monetization_transaction_price_currency_symbol ;;
  }

  dimension: monetization_transaction_price_reported {
    type: string
    sql: ${TABLE}.monetization_transaction_price_reported ;;
  }

  dimension: monetization_transaction_quantity {
    type: number
    sql: ${TABLE}.monetization_transaction_quantity ;;
  }

  dimension: monetization_transaction_store {
    type: string
    sql: ${TABLE}.monetization_transaction_store ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension_group: session_start_timestamp {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.session_start_timestamp ;;
  }

  dimension_group: session_stop_timestamp {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.session_stop_timestamp ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [application_package_name, application_version_name, application_sdk_name, device_platform_name, a_photocreatedcreatorusername, a_photoviewusername, a_searchusername, a_sharephotoname, a_sharephotousername, a_shareusername, a_sharevideoname, a_streamvideocreatorusername, a_userloggedinusername, a_videostopwatchvideoname, a_videostopwatchwatcherusername, a_videoviewname, a_videoviewusername]
  }
}
