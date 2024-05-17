Feature: On calling POST FI Notification API, verify that on sending consent notification
  request with invalid JWS API signature, error response is received.

  Scenario: 3031_1 On calling POST FI Notification API, Use the pre-generated consent details from settings. Set a
  valid FI response in mock FIP and send a valid FI request to AA. Finally send a FI notification request and use the
  valid JWS signature and add one character at the end and send on the x-jws-signature header
  and Verify that the error response is received.
    Given On calling "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is SignatureDoesNotMatch/InvalidRequest
    And   Verify that the version is supported version

  Scenario: 3031_2 On calling POST FI Notification API, Use the pre-generated consent details from settings. Set a
  valid FI response in mock FIP and send a valid FI request to AA. Finally send a FI notification request and use the
  valid JWS signature and remove the last character and send on the x-jws-signature header and Verify
  that the error response is received.
    Given On calling "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is SignatureDoesNotMatch/InvalidRequest
    And   Verify that the version is supported version

  Scenario: 3031_3 On calling POST FI Notification API, Use the pre-generated consent details
  from settings. Set a valid FI response in mock FIP and send a valid FI request to AA. Finally
  send a FI notification request and generate the JWS signature using a different key that is
  not used for anything and send on the x-jws-signature header and Verify that the error
  response is received.
    Given On calling "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is SignatureDoesNotMatch/InvalidRequest
    And   Verify that the version is supported version

  Scenario: 3031_4 On calling POST FI Notification API, Use the pre-generated consent details
  from settings. Set a valid FI response in mock FIP and send a valid FI request to AA.
  Finally send a FI notification request and use the valid JWS signature, make a small change
  in the request body data and send on the x-jws-signature header and Verify that the
  error response is received.
    Given On calling "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is SignatureDoesNotMatch/InvalidRequest
    And   Verify that the version is supported version
