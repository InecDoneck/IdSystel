view: client_dist {
  derived_table: {
    sql: SELECT
        nclient_id,
        client_cognito_id,
        dlastupdate,
        vusername,
        vpassword,
        vemail,
        vphone,
        vpersonorcorp,
        vbusinesslegalname,
        vbusinessemail,
        vbusinessphone,
        vcontactperson,
        vnotetobdm,
        vstate,
        vstatus,
        vstatuschangedate,
        vfullnamedisplay,
        vfirstname,
        vmiddleinitial,
        vlastname,
        vpaymmethod,
        vstreetaddressbill,
        vcitybill,
        vstatebill,
        vzipbill,
        vcurrency,
        vcountrybill,
        vdateofbirth,
        vstreetaddressmail,
        vcitym,
        vstatem,
        vzipm,
        vcountrym,
        vssn,
        vbankname,
        vbankaddress,
        vaccountnumber,
        vroutingnumber,
        vaccounttype,
        vcctoken,
        vbusinesscategory,
        vsubcategory,
        vnaics,
        vownershiptype,
        vbusinessnamedba,
        vbrandname,
        vtin,
        vwebsite,
        vstreetaddresbusiness,
        vcitybusiness,
        vstatebusiness,
        vzipbusiness,
        vcountrybusiness,
        vyearsinbusiness,
        vmmyybusinessestablished,
        vgovrnissuedid1type,
        vgovrnissuedid1num,
        vgovrnissueidid1issdate,
        vgovrnissuedid1expirdate,
        vgovrnissuedid2type,
        vgovrnissuedid2num,
        vgovrnissuedid2issdate,
        vgovrnissuedid2expirdate,
        vprincipalname1,
        vprincipalssn1,
        vprincipal1dob,
        vprincipal1address,
        vowner1,
        vprocentownership1,
        vprincipalname2,
        vprincipalssn2,
        vprincipal2dob,
        vprincipal2address,
        vowner2,
        vprocentownership2,
        vprincipalname3,
        vprincipalssn3,
        vprincipal3dob,
        vprincipal3address,
        vowner3,
        vprocentownership3,
        vprincipalname4,
        vprincipalssn4,
        vprincipal4dob,
        vprincipal4address,
        vowner4,
        vprocentownership4,
        vprincipalname5,
        vprincipalssn5,
        vprincipal5dob,
        vprincipal5address,
        vowner5,
        vprocentownership5,
        vgovrnissuedid1typeprincip1,
        vgovrnissuedid1numprincip1,
        vgovrnissuedid1issdatprincip1,
        vgovrnissuedid1expdatprincip1,
        vgovrnissuedid2typeprincip1,
        vgovrnissuedid2numprincip1,
        vgovrnissuedid2issdatprincip1,
        vgovrnissuedid2expdatprincip1,
        vgovrnissuedid1typeprincip2,
        vgovrnissuedid1numprincip2,
        vgovrnissuedid1issdatprincip2,
        vgovrnissuedid1expdatprincip2,
        vgovrnissuedid2typeprincip2,
        vgovrnissuedid2numprincip2,
        vgovrnissuedid2issdatprincip2,
        vgovrnissuedid2expdatprincip2,
        vgovrnissuedid1typeprincip3,
        vgovrnissuedid1numprincip3,
        vgovrnissuedid1issdatprincip3,
        vgovrnissuedid1expdatprincip3,
        vgovrnissuedid2typeprincip3,
        vgovrnissuedid2numprincip3,
        vgovrnissuedid2issdatprincip3,
        vgovrnissuedid2expdatprincip3,
        vgovrnissuedid1typeprincip4,
        vgovrnissuedid1numprincip4,
        vgovrnissuedid1issdatprincip4,
        vgovrnissuedid1expdatprincip4,
        vgovrnissuedid2typeprincip4,
        vgovrnissuedid2numprincip4,
        vgovrnissuedid2issdatprincip4,
        vgovrnissuedid2expdatprincip4,
        vgovrnissuedid1typeprincip5,
        vgovrnissuedid1numprincip5,
        vgovrnissuedid1issdatprincip5,
        vgovrnissuedid1expdatprincip5,
        vgovrnissuedid2typeprincip5,
        vgovrnissuedid2numprincip5,
        vgovrnissuedid2issdatprincip5,
        vgovrnissuedid2expdatprincip5,
        vriskrating,
        vkycregistrationcheck,
        vkycofac,
        vkycofaccheckprincip1,
        vkycofaccheckprincip2,
        vkycofaccheckprincip3,
        vkycofaccheckprincip4,
        vkycofaccheckprincip5,
        vkycmatch,
        vkycmatchcheckprincip1,
        vkycmatchcheckprincip2,
        vkycmatchcheckprincip3,
        vkycmatchcheckprincip4,
        vkycmatchcheckprincip5,
        vkycothercheck,
        vkycothercheckprincip1,
        vkycothercheckprincip2,
        vkycothercheckprincip3,
        vkycothercheckprincip4,
        vkycothercheckprincip5
      FROM
        billing.clients limit 2
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: nclient_id {
    type: number
    sql: ${TABLE}.nclient_id ;;
  }

  dimension: client_cognito_id {
    type: string
    sql: ${TABLE}.client_cognito_id ;;
  }

  dimension: dlastupdate {
    type: date
    sql: ${TABLE}.dlastupdate ;;
  }

  dimension: vusername {
    type: string
    sql: ${TABLE}.vusername ;;
  }

  dimension: vpassword {
    type: string
    sql: ${TABLE}.vpassword ;;
  }

  dimension: vemail {
    type: string
    sql: ${TABLE}.vemail ;;
  }

  dimension: vphone {
    type: string
    sql: ${TABLE}.vphone ;;
  }

  dimension: vpersonorcorp {
    type: string
    sql: ${TABLE}.vpersonorcorp ;;
  }

  dimension: vbusinesslegalname {
    type: string
    sql: ${TABLE}.vbusinesslegalname ;;
  }

  dimension: vbusinessemail {
    type: string
    sql: ${TABLE}.vbusinessemail ;;
  }

  dimension: vbusinessphone {
    type: string
    sql: ${TABLE}.vbusinessphone ;;
  }

  dimension: vcontactperson {
    type: string
    sql: ${TABLE}.vcontactperson ;;
  }

  dimension: vnotetobdm {
    type: string
    sql: ${TABLE}.vnotetobdm ;;
  }

  dimension: vstate {
    type: string
    sql: ${TABLE}.vstate ;;
  }

  dimension: vstatus {
    type: string
    sql: ${TABLE}.vstatus ;;
  }

  dimension: vstatuschangedate {
    type: string
    sql: ${TABLE}.vstatuschangedate ;;
  }

  dimension: vfullnamedisplay {
    type: string
    sql: ${TABLE}.vfullnamedisplay ;;
  }

  dimension: vfirstname {
    type: string
    sql: ${TABLE}.vfirstname ;;
  }

  dimension: vmiddleinitial {
    type: string
    sql: ${TABLE}.vmiddleinitial ;;
  }

  dimension: vlastname {
    type: string
    sql: ${TABLE}.vlastname ;;
  }

  dimension: vpaymmethod {
    type: string
    sql: ${TABLE}.vpaymmethod ;;
  }

  dimension: vstreetaddressbill {
    type: string
    sql: ${TABLE}.vstreetaddressbill ;;
  }

  dimension: vcitybill {
    type: string
    sql: ${TABLE}.vcitybill ;;
  }

  dimension: vstatebill {
    type: string
    sql: ${TABLE}.vstatebill ;;
  }

  dimension: vzipbill {
    type: string
    sql: ${TABLE}.vzipbill ;;
  }

  dimension: vcurrency {
    type: string
    sql: ${TABLE}.vcurrency ;;
  }

  dimension: vcountrybill {
    type: string
    sql: ${TABLE}.vcountrybill ;;
  }

  dimension: vdateofbirth {
    type: string
    sql: ${TABLE}.vdateofbirth ;;
  }

  dimension: vstreetaddressmail {
    type: string
    sql: ${TABLE}.vstreetaddressmail ;;
  }

  dimension: vcitym {
    type: string
    sql: ${TABLE}.vcitym ;;
  }

  dimension: vstatem {
    type: string
    sql: ${TABLE}.vstatem ;;
  }

  dimension: vzipm {
    type: string
    sql: ${TABLE}.vzipm ;;
  }

  dimension: vcountrym {
    type: string
    sql: ${TABLE}.vcountrym ;;
  }

  dimension: vssn {
    type: string
    sql: ${TABLE}.vssn ;;
  }

  dimension: vbankname {
    type: string
    sql: ${TABLE}.vbankname ;;
  }

  dimension: vbankaddress {
    type: string
    sql: ${TABLE}.vbankaddress ;;
  }

  dimension: vaccountnumber {
    type: string
    sql: ${TABLE}.vaccountnumber ;;
  }

  dimension: vroutingnumber {
    type: string
    sql: ${TABLE}.vroutingnumber ;;
  }

  dimension: vaccounttype {
    type: string
    sql: ${TABLE}.vaccounttype ;;
  }

  dimension: vcctoken {
    type: string
    sql: ${TABLE}.vcctoken ;;
  }

  dimension: vbusinesscategory {
    type: string
    sql: ${TABLE}.vbusinesscategory ;;
  }

  dimension: vsubcategory {
    type: string
    sql: ${TABLE}.vsubcategory ;;
  }

  dimension: vnaics {
    type: string
    sql: ${TABLE}.vnaics ;;
  }

  dimension: vownershiptype {
    type: string
    sql: ${TABLE}.vownershiptype ;;
  }

  dimension: vbusinessnamedba {
    type: string
    sql: ${TABLE}.vbusinessnamedba ;;
  }

  dimension: vbrandname {
    type: string
    sql: ${TABLE}.vbrandname ;;
  }

  dimension: vtin {
    type: string
    sql: ${TABLE}.vtin ;;
  }

  dimension: vwebsite {
    type: string
    sql: ${TABLE}.vwebsite ;;
  }

  dimension: vstreetaddresbusiness {
    type: string
    sql: ${TABLE}.vstreetaddresbusiness ;;
  }

  dimension: vcitybusiness {
    type: string
    sql: ${TABLE}.vcitybusiness ;;
  }

  dimension: vstatebusiness {
    type: string
    sql: ${TABLE}.vstatebusiness ;;
  }

  dimension: vzipbusiness {
    type: string
    sql: ${TABLE}.vzipbusiness ;;
  }

  dimension: vcountrybusiness {
    type: string
    sql: ${TABLE}.vcountrybusiness ;;
  }

  dimension: vyearsinbusiness {
    type: string
    sql: ${TABLE}.vyearsinbusiness ;;
  }

  dimension: vmmyybusinessestablished {
    type: string
    sql: ${TABLE}.vmmyybusinessestablished ;;
  }

  dimension: vgovrnissuedid1type {
    type: string
    sql: ${TABLE}.vgovrnissuedid1type ;;
  }

  dimension: vgovrnissuedid1num {
    type: string
    sql: ${TABLE}.vgovrnissuedid1num ;;
  }

  dimension: vgovrnissueidid1issdate {
    type: string
    sql: ${TABLE}.vgovrnissueidid1issdate ;;
  }

  dimension: vgovrnissuedid1expirdate {
    type: string
    sql: ${TABLE}.vgovrnissuedid1expirdate ;;
  }

  dimension: vgovrnissuedid2type {
    type: string
    sql: ${TABLE}.vgovrnissuedid2type ;;
  }

  dimension: vgovrnissuedid2num {
    type: string
    sql: ${TABLE}.vgovrnissuedid2num ;;
  }

  dimension: vgovrnissuedid2issdate {
    type: string
    sql: ${TABLE}.vgovrnissuedid2issdate ;;
  }

  dimension: vgovrnissuedid2expirdate {
    type: string
    sql: ${TABLE}.vgovrnissuedid2expirdate ;;
  }

  dimension: vprincipalname1 {
    type: string
    sql: ${TABLE}.vprincipalname1 ;;
  }

  dimension: vprincipalssn1 {
    type: string
    sql: ${TABLE}.vprincipalssn1 ;;
  }

  dimension: vprincipal1dob {
    type: string
    sql: ${TABLE}.vprincipal1dob ;;
  }

  dimension: vprincipal1address {
    type: string
    sql: ${TABLE}.vprincipal1address ;;
  }

  dimension: vowner1 {
    type: string
    sql: ${TABLE}.vowner1 ;;
  }

  dimension: vprocentownership1 {
    type: string
    sql: ${TABLE}.vprocentownership1 ;;
  }

  dimension: vprincipalname2 {
    type: string
    sql: ${TABLE}.vprincipalname2 ;;
  }

  dimension: vprincipalssn2 {
    type: string
    sql: ${TABLE}.vprincipalssn2 ;;
  }

  dimension: vprincipal2dob {
    type: string
    sql: ${TABLE}.vprincipal2dob ;;
  }

  dimension: vprincipal2address {
    type: string
    sql: ${TABLE}.vprincipal2address ;;
  }

  dimension: vowner2 {
    type: string
    sql: ${TABLE}.vowner2 ;;
  }

  dimension: vprocentownership2 {
    type: string
    sql: ${TABLE}.vprocentownership2 ;;
  }

  dimension: vprincipalname3 {
    type: string
    sql: ${TABLE}.vprincipalname3 ;;
  }

  dimension: vprincipalssn3 {
    type: string
    sql: ${TABLE}.vprincipalssn3 ;;
  }

  dimension: vprincipal3dob {
    type: string
    sql: ${TABLE}.vprincipal3dob ;;
  }

  dimension: vprincipal3address {
    type: string
    sql: ${TABLE}.vprincipal3address ;;
  }

  dimension: vowner3 {
    type: string
    sql: ${TABLE}.vowner3 ;;
  }

  dimension: vprocentownership3 {
    type: string
    sql: ${TABLE}.vprocentownership3 ;;
  }

  dimension: vprincipalname4 {
    type: string
    sql: ${TABLE}.vprincipalname4 ;;
  }

  dimension: vprincipalssn4 {
    type: string
    sql: ${TABLE}.vprincipalssn4 ;;
  }

  dimension: vprincipal4dob {
    type: string
    sql: ${TABLE}.vprincipal4dob ;;
  }

  dimension: vprincipal4address {
    type: string
    sql: ${TABLE}.vprincipal4address ;;
  }

  dimension: vowner4 {
    type: string
    sql: ${TABLE}.vowner4 ;;
  }

  dimension: vprocentownership4 {
    type: string
    sql: ${TABLE}.vprocentownership4 ;;
  }

  dimension: vprincipalname5 {
    type: string
    sql: ${TABLE}.vprincipalname5 ;;
  }

  dimension: vprincipalssn5 {
    type: string
    sql: ${TABLE}.vprincipalssn5 ;;
  }

  dimension: vprincipal5dob {
    type: string
    sql: ${TABLE}.vprincipal5dob ;;
  }

  dimension: vprincipal5address {
    type: string
    sql: ${TABLE}.vprincipal5address ;;
  }

  dimension: vowner5 {
    type: string
    sql: ${TABLE}.vowner5 ;;
  }

  dimension: vprocentownership5 {
    type: string
    sql: ${TABLE}.vprocentownership5 ;;
  }

  dimension: vgovrnissuedid1typeprincip1 {
    type: string
    sql: ${TABLE}.vgovrnissuedid1typeprincip1 ;;
  }

  dimension: vgovrnissuedid1numprincip1 {
    type: string
    sql: ${TABLE}.vgovrnissuedid1numprincip1 ;;
  }

  dimension: vgovrnissuedid1issdatprincip1 {
    type: string
    sql: ${TABLE}.vgovrnissuedid1issdatprincip1 ;;
  }

  dimension: vgovrnissuedid1expdatprincip1 {
    type: string
    sql: ${TABLE}.vgovrnissuedid1expdatprincip1 ;;
  }

  dimension: vgovrnissuedid2typeprincip1 {
    type: string
    sql: ${TABLE}.vgovrnissuedid2typeprincip1 ;;
  }

  dimension: vgovrnissuedid2numprincip1 {
    type: string
    sql: ${TABLE}.vgovrnissuedid2numprincip1 ;;
  }

  dimension: vgovrnissuedid2issdatprincip1 {
    type: string
    sql: ${TABLE}.vgovrnissuedid2issdatprincip1 ;;
  }

  dimension: vgovrnissuedid2expdatprincip1 {
    type: string
    sql: ${TABLE}.vgovrnissuedid2expdatprincip1 ;;
  }

  dimension: vgovrnissuedid1typeprincip2 {
    type: string
    sql: ${TABLE}.vgovrnissuedid1typeprincip2 ;;
  }

  dimension: vgovrnissuedid1numprincip2 {
    type: string
    sql: ${TABLE}.vgovrnissuedid1numprincip2 ;;
  }

  dimension: vgovrnissuedid1issdatprincip2 {
    type: string
    sql: ${TABLE}.vgovrnissuedid1issdatprincip2 ;;
  }

  dimension: vgovrnissuedid1expdatprincip2 {
    type: string
    sql: ${TABLE}.vgovrnissuedid1expdatprincip2 ;;
  }

  dimension: vgovrnissuedid2typeprincip2 {
    type: string
    sql: ${TABLE}.vgovrnissuedid2typeprincip2 ;;
  }

  dimension: vgovrnissuedid2numprincip2 {
    type: string
    sql: ${TABLE}.vgovrnissuedid2numprincip2 ;;
  }

  dimension: vgovrnissuedid2issdatprincip2 {
    type: string
    sql: ${TABLE}.vgovrnissuedid2issdatprincip2 ;;
  }

  dimension: vgovrnissuedid2expdatprincip2 {
    type: string
    sql: ${TABLE}.vgovrnissuedid2expdatprincip2 ;;
  }

  dimension: vgovrnissuedid1typeprincip3 {
    type: string
    sql: ${TABLE}.vgovrnissuedid1typeprincip3 ;;
  }

  dimension: vgovrnissuedid1numprincip3 {
    type: string
    sql: ${TABLE}.vgovrnissuedid1numprincip3 ;;
  }

  dimension: vgovrnissuedid1issdatprincip3 {
    type: string
    sql: ${TABLE}.vgovrnissuedid1issdatprincip3 ;;
  }

  dimension: vgovrnissuedid1expdatprincip3 {
    type: string
    sql: ${TABLE}.vgovrnissuedid1expdatprincip3 ;;
  }

  dimension: vgovrnissuedid2typeprincip3 {
    type: string
    sql: ${TABLE}.vgovrnissuedid2typeprincip3 ;;
  }

  dimension: vgovrnissuedid2numprincip3 {
    type: string
    sql: ${TABLE}.vgovrnissuedid2numprincip3 ;;
  }

  dimension: vgovrnissuedid2issdatprincip3 {
    type: string
    sql: ${TABLE}.vgovrnissuedid2issdatprincip3 ;;
  }

  dimension: vgovrnissuedid2expdatprincip3 {
    type: string
    sql: ${TABLE}.vgovrnissuedid2expdatprincip3 ;;
  }

  dimension: vgovrnissuedid1typeprincip4 {
    type: string
    sql: ${TABLE}.vgovrnissuedid1typeprincip4 ;;
  }

  dimension: vgovrnissuedid1numprincip4 {
    type: string
    sql: ${TABLE}.vgovrnissuedid1numprincip4 ;;
  }

  dimension: vgovrnissuedid1issdatprincip4 {
    type: string
    sql: ${TABLE}.vgovrnissuedid1issdatprincip4 ;;
  }

  dimension: vgovrnissuedid1expdatprincip4 {
    type: string
    sql: ${TABLE}.vgovrnissuedid1expdatprincip4 ;;
  }

  dimension: vgovrnissuedid2typeprincip4 {
    type: string
    sql: ${TABLE}.vgovrnissuedid2typeprincip4 ;;
  }

  dimension: vgovrnissuedid2numprincip4 {
    type: string
    sql: ${TABLE}.vgovrnissuedid2numprincip4 ;;
  }

  dimension: vgovrnissuedid2issdatprincip4 {
    type: string
    sql: ${TABLE}.vgovrnissuedid2issdatprincip4 ;;
  }

  dimension: vgovrnissuedid2expdatprincip4 {
    type: string
    sql: ${TABLE}.vgovrnissuedid2expdatprincip4 ;;
  }

  dimension: vgovrnissuedid1typeprincip5 {
    type: string
    sql: ${TABLE}.vgovrnissuedid1typeprincip5 ;;
  }

  dimension: vgovrnissuedid1numprincip5 {
    type: string
    sql: ${TABLE}.vgovrnissuedid1numprincip5 ;;
  }

  dimension: vgovrnissuedid1issdatprincip5 {
    type: string
    sql: ${TABLE}.vgovrnissuedid1issdatprincip5 ;;
  }

  dimension: vgovrnissuedid1expdatprincip5 {
    type: string
    sql: ${TABLE}.vgovrnissuedid1expdatprincip5 ;;
  }

  dimension: vgovrnissuedid2typeprincip5 {
    type: string
    sql: ${TABLE}.vgovrnissuedid2typeprincip5 ;;
  }

  dimension: vgovrnissuedid2numprincip5 {
    type: string
    sql: ${TABLE}.vgovrnissuedid2numprincip5 ;;
  }

  dimension: vgovrnissuedid2issdatprincip5 {
    type: string
    sql: ${TABLE}.vgovrnissuedid2issdatprincip5 ;;
  }

  dimension: vgovrnissuedid2expdatprincip5 {
    type: string
    sql: ${TABLE}.vgovrnissuedid2expdatprincip5 ;;
  }

  dimension: vriskrating {
    type: number
    sql: ${TABLE}.vriskrating ;;
  }

  dimension: vkycregistrationcheck {
    type: string
    sql: ${TABLE}.vkycregistrationcheck ;;
  }

  dimension: vkycofac {
    type: number
    sql: ${TABLE}.vkycofac ;;
  }

  dimension: vkycofaccheckprincip1 {
    type: string
    sql: ${TABLE}.vkycofaccheckprincip1 ;;
  }

  dimension: vkycofaccheckprincip2 {
    type: string
    sql: ${TABLE}.vkycofaccheckprincip2 ;;
  }

  dimension: vkycofaccheckprincip3 {
    type: string
    sql: ${TABLE}.vkycofaccheckprincip3 ;;
  }

  dimension: vkycofaccheckprincip4 {
    type: string
    sql: ${TABLE}.vkycofaccheckprincip4 ;;
  }

  dimension: vkycofaccheckprincip5 {
    type: string
    sql: ${TABLE}.vkycofaccheckprincip5 ;;
  }

  dimension: vkycmatch {
    type: number
    sql: ${TABLE}.vkycmatch ;;
  }

  dimension: vkycmatchcheckprincip1 {
    type: string
    sql: ${TABLE}.vkycmatchcheckprincip1 ;;
  }

  dimension: vkycmatchcheckprincip2 {
    type: string
    sql: ${TABLE}.vkycmatchcheckprincip2 ;;
  }

  dimension: vkycmatchcheckprincip3 {
    type: string
    sql: ${TABLE}.vkycmatchcheckprincip3 ;;
  }

  dimension: vkycmatchcheckprincip4 {
    type: string
    sql: ${TABLE}.vkycmatchcheckprincip4 ;;
  }

  dimension: vkycmatchcheckprincip5 {
    type: string
    sql: ${TABLE}.vkycmatchcheckprincip5 ;;
  }

  dimension: vkycothercheck {
    type: number
    sql: ${TABLE}.vkycothercheck ;;
  }

  dimension: vkycothercheckprincip1 {
    type: number
    sql: ${TABLE}.vkycothercheckprincip1 ;;
  }

  dimension: vkycothercheckprincip2 {
    type: number
    sql: ${TABLE}.vkycothercheckprincip2 ;;
  }

  dimension: vkycothercheckprincip3 {
    type: number
    sql: ${TABLE}.vkycothercheckprincip3 ;;
  }

  dimension: vkycothercheckprincip4 {
    type: number
    sql: ${TABLE}.vkycothercheckprincip4 ;;
  }

  dimension: vkycothercheckprincip5 {
    type: number
    sql: ${TABLE}.vkycothercheckprincip5 ;;
  }

  set: detail {
    fields: [
      nclient_id,
      client_cognito_id,
      dlastupdate,
      vusername,
      vpassword,
      vemail,
      vphone,
      vpersonorcorp,
      vbusinesslegalname,
      vbusinessemail,
      vbusinessphone,
      vcontactperson,
      vnotetobdm,
      vstate,
      vstatus,
      vstatuschangedate,
      vfullnamedisplay,
      vfirstname,
      vmiddleinitial,
      vlastname,
      vpaymmethod,
      vstreetaddressbill,
      vcitybill,
      vstatebill,
      vzipbill,
      vcurrency,
      vcountrybill,
      vdateofbirth,
      vstreetaddressmail,
      vcitym,
      vstatem,
      vzipm,
      vcountrym,
      vssn,
      vbankname,
      vbankaddress,
      vaccountnumber,
      vroutingnumber,
      vaccounttype,
      vcctoken,
      vbusinesscategory,
      vsubcategory,
      vnaics,
      vownershiptype,
      vbusinessnamedba,
      vbrandname,
      vtin,
      vwebsite,
      vstreetaddresbusiness,
      vcitybusiness,
      vstatebusiness,
      vzipbusiness,
      vcountrybusiness,
      vyearsinbusiness,
      vmmyybusinessestablished,
      vgovrnissuedid1type,
      vgovrnissuedid1num,
      vgovrnissueidid1issdate,
      vgovrnissuedid1expirdate,
      vgovrnissuedid2type,
      vgovrnissuedid2num,
      vgovrnissuedid2issdate,
      vgovrnissuedid2expirdate,
      vprincipalname1,
      vprincipalssn1,
      vprincipal1dob,
      vprincipal1address,
      vowner1,
      vprocentownership1,
      vprincipalname2,
      vprincipalssn2,
      vprincipal2dob,
      vprincipal2address,
      vowner2,
      vprocentownership2,
      vprincipalname3,
      vprincipalssn3,
      vprincipal3dob,
      vprincipal3address,
      vowner3,
      vprocentownership3,
      vprincipalname4,
      vprincipalssn4,
      vprincipal4dob,
      vprincipal4address,
      vowner4,
      vprocentownership4,
      vprincipalname5,
      vprincipalssn5,
      vprincipal5dob,
      vprincipal5address,
      vowner5,
      vprocentownership5,
      vgovrnissuedid1typeprincip1,
      vgovrnissuedid1numprincip1,
      vgovrnissuedid1issdatprincip1,
      vgovrnissuedid1expdatprincip1,
      vgovrnissuedid2typeprincip1,
      vgovrnissuedid2numprincip1,
      vgovrnissuedid2issdatprincip1,
      vgovrnissuedid2expdatprincip1,
      vgovrnissuedid1typeprincip2,
      vgovrnissuedid1numprincip2,
      vgovrnissuedid1issdatprincip2,
      vgovrnissuedid1expdatprincip2,
      vgovrnissuedid2typeprincip2,
      vgovrnissuedid2numprincip2,
      vgovrnissuedid2issdatprincip2,
      vgovrnissuedid2expdatprincip2,
      vgovrnissuedid1typeprincip3,
      vgovrnissuedid1numprincip3,
      vgovrnissuedid1issdatprincip3,
      vgovrnissuedid1expdatprincip3,
      vgovrnissuedid2typeprincip3,
      vgovrnissuedid2numprincip3,
      vgovrnissuedid2issdatprincip3,
      vgovrnissuedid2expdatprincip3,
      vgovrnissuedid1typeprincip4,
      vgovrnissuedid1numprincip4,
      vgovrnissuedid1issdatprincip4,
      vgovrnissuedid1expdatprincip4,
      vgovrnissuedid2typeprincip4,
      vgovrnissuedid2numprincip4,
      vgovrnissuedid2issdatprincip4,
      vgovrnissuedid2expdatprincip4,
      vgovrnissuedid1typeprincip5,
      vgovrnissuedid1numprincip5,
      vgovrnissuedid1issdatprincip5,
      vgovrnissuedid1expdatprincip5,
      vgovrnissuedid2typeprincip5,
      vgovrnissuedid2numprincip5,
      vgovrnissuedid2issdatprincip5,
      vgovrnissuedid2expdatprincip5,
      vriskrating,
      vkycregistrationcheck,
      vkycofac,
      vkycofaccheckprincip1,
      vkycofaccheckprincip2,
      vkycofaccheckprincip3,
      vkycofaccheckprincip4,
      vkycofaccheckprincip5,
      vkycmatch,
      vkycmatchcheckprincip1,
      vkycmatchcheckprincip2,
      vkycmatchcheckprincip3,
      vkycmatchcheckprincip4,
      vkycmatchcheckprincip5,
      vkycothercheck,
      vkycothercheckprincip1,
      vkycothercheckprincip2,
      vkycothercheckprincip3,
      vkycothercheckprincip4,
      vkycothercheckprincip5
    ]
  }
}
