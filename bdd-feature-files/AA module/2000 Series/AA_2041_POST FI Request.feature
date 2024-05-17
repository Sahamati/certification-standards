Feature: On calling POST FI Request API, verify that on sending FI fetch request
  with invalid JWS API signature,the error response is received.

  Scenario: 2041_1 On calling POST FI Request API, use the pre-linked user details from settings and set a valid FI response
  in mock FIP. Send a valid FI request and set the FI notification response in FIU mock server. Send the FI ready
  notification and wait to receive FI ready notification in mock FIU. Send the FI fetch request. Use the valid JWS signature and
  add one character at the end and send on the x-jws-signature header and Verify that HTTP status code 400 is received.
    Given Calling the "POST /FI/request" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is SignatureDoesNotMatch/InvalidRequest
    And   Verify that the version is supported version

  Scenario: 2041_2 On calling POST FI Request API, use the pre-linked user details from settings and set a valid FI response
  in mock FIP. Send a valid FI request and set the FI notification response in FIU mock server. Send the FI ready
  notification and wait to receive FI ready notification in mock FIU. Send the FI fetch request. Use the valid JWS
  signature and remove the last character at the end and send on the x-jws-signature header and Verify that HTTP status code 400 is received.
    Given Calling the "POST /FI/request" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is SignatureDoesNotMatch/InvalidRequest
    And   Verify that the version is supported version

  Scenario: 2041_3 OOn calling POST FI Request API, use the pre-linked user details from settings and set a valid FI response
  in mock FIP. Send a valid FI request and set the FI notification response in FIU mock server. Send the FI ready
  notification and wait to receive FI ready notification in mock FIU. Send the FI fetch request. Generate the JWS
  signature using a different key that is not used for anything and send on the x-jws-signature header and Verify that HTTP status code 400 is received.
    Given Calling the "POST /FI/request" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is SignatureDoesNotMatch/InvalidRequest
    And   Verify that the version is supported version

  Scenario: 2041_4 On calling POST FI Request API, use the pre-linked user details from settings and set a valid FI response
  in mock FIP. Send a valid FI request and set the FI notification response in FIU mock server. Send the FI ready
  notification and wait to receive FI ready notification in mock FIU. Send the FI fetch request. Use the valid JWS
  signature, make a small change in the request body data and send on the x-jws-signature header and Verify that HTTP status code 400 is received.
    Given Calling the "POST /FI/request" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is SignatureDoesNotMatch/InvalidRequest
    And   Verify that the version is supported version
