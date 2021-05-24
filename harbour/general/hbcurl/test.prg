/****f* CookBook/nome
 * NAME
 *   How to send a e-mail  ? 
 *  
 * AUTHOR
 *
 *   Vlademiro Landim Junior <vlad at altersoft dot net> 
 *
 * TAGS
 * 
 *   #email #ssl #hbcurl 
 *
 * SOURCE
 */
 #require "hbcurl"
 PROCEDURE MAIN
 
     LOCAL cFrom := "sistemas1033@gmail.com"
     LOCAL  cTo := "vlad@altersoft.net"
     LOCAL cPassword := "cocacola2018"
     LOCAL cHost := "smtps://smtp.gmail.com"
     LOCAL cSubject := "My Subject"
     LOCAL cText := "Content"
     LOCAL cHtml // To content HTML (not used in this  example)
     LOCAL lSTARTTLS_force := .t.
     LOCAL lAPI_curl := curl_version_info()[ HB_CURLVERINFO_VERSION_NUM ] >= 0x073800
     LOCAL curl
     LOCAL lSystemCA := .t., cCA := hb_PathJoin( iif( hb_DirBase() == "", hb_cwd(), hb_DirBase() ), "cacert.pem" )
 
      
     cFrom := "<" + ( cUser := hb_curl_mail_address_to_email( cFrom ) ) + ">"
     ? "From : " , cFrom
     cTo := "<" + hb_curl_mail_address_to_email( cTo ) + ">"
     ? "Send e-mail to   : " , cTo
     ? "libcurl:", curl_version_info()[ HB_CURLVERINFO_VERSION ]
     ? "Payload API:", iif( lAPI_curl, "libcurl native", "tip_MailAssemble()" )
     ? "Host:", cHost, iif( lSTARTTLS_force, "(must STARTTLS)", "" )
     ? "User:", cUser
      curl_global_init()
    
     IF Empty( curl := curl_easy_init() )
          ? "Failed to init"
          QUIT
     ENDIF
 
     IF ! lSystemCA                                                                                                                          
         IF hb_vfExists( cCA )
               curl_easy_setopt( curl, HB_CURLOPT_CAINFO, cCA )
         ELSE
               ?
               ? "Error: Trusted Root Certificates missing. Open this URL in your web browser:"
               ? "  " + "https://curl.haxx.se/ca/cacert.pem"
               ? "and save the file as:"
               ? "  " + cCA
               RETURN
          ENDIF
     ENDIF
 
      curl_easy_setopt( curl, HB_CURLOPT_USE_SSL, ;
         iif( lSTARTTLS_force, HB_CURLUSESSL_ALL, HB_CURLUSESSL_TRY ) )
      curl_easy_setopt( curl, HB_CURLOPT_UPLOAD )
      curl_easy_setopt( curl, HB_CURLOPT_URL, cHost )
      curl_easy_setopt( curl, HB_CURLOPT_PROTOCOLS, ;
         hb_bitOr( HB_CURLPROTO_SMTPS, HB_CURLPROTO_SMTP ) )
      curl_easy_setopt( curl, HB_CURLOPT_TIMEOUT_MS, 15000 )
      curl_easy_setopt( curl, HB_CURLOPT_VERBOSE, .T. )
      curl_easy_setopt( curl, HB_CURLOPT_USERNAME, cUser )
      curl_easy_setopt( curl, HB_CURLOPT_PASSWORD, cPassword )
      curl_easy_setopt( curl, HB_CURLOPT_MAIL_FROM, cFrom )
      curl_easy_setopt( curl, HB_CURLOPT_MAIL_RCPT, { cTo } )
 
 
 
 
 
     // ENviado por hbcurl
     curl_easy_setopt( curl, HB_CURLOPT_HTTPHEADER, { ;
            "Date: " + hb_curl_date(), ;
            "To: " + cTo, ;
            "From: " + "naoresponda" + cFrom, ;
            "Cc: " + cTo, ;
            "Message-ID: <dcd7cb36-11db-487a-9f3a-e652a9458efd@rfcpedant.example.org>", ;
            "Reply-To: " + cFrom, ;
            "Disposition-Notification-To: " + cFrom, ;
            "X-Priority: " + hb_ntos( 3 ), ;  /* 1: high, 3: standard, 5: low */
            "Subject: " + cSubject } )
 
     /* NOTE: 'charset' to be added when implemented */
     curl_easy_setopt( curl, HB_CURLOPT_MIMEPOST, { ;
            { "subparts" => { ;
              { "data" => cHTML, ;
                "type" => "text/html" }, ;
              { "data" => cText } }, ;
              "type" => "multipart/alternative", ;
              "headers" => { "Content-Disposition: inline" } }, ;
            { "filedata" => __FILE__ }, ;
            { "data" => Replicate( hb_BChar( 123 ), 1024 ), ;
              "type" => "image/png", ;
              "encoder" => "base64", ;  /* binary, 8bit, 7bit, base64, quoted-printable */
              "filename" => "nothing.png" } } )
     ? "Result:", curl_easy_perform( curl )
 
     curl_easy_cleanup( curl )
 
 
     RETURN
 /*******/
 
