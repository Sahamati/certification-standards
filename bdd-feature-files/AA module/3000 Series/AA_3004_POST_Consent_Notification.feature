Feature: On calling POST Consent Notification API, verify that on sending consent
  notification request with invalid timestamp, the error response is received.

  Scenario: 3004_1 On calling POST Consent Notification API, set the POST consent response in FIP mock server. Send a
  valid consent request and ask the user to approve the consent and confirm. Send a valid consent handle to receive
  APPROVED status. Send a consent fetch request and finally send a consent notification request with 2 to 3 standard
  timestamp formats that are not in the specification and Verify that the error response is received.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 3004_2 On calling POST Consent Notification API, set the POST consent response in FIP mock server. Send a
  valid consent request and ask the user to approve the consent and confirm. Send a valid consent handle to receive
  APPROVED status. Send a consent fetch request and finally send a consent notification request and add an extra character
  at the end of proper timestamp and Verify that the error response is received.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 3004_3 On calling POST Consent Notification API, set the POST consent response in FIP mock server. Send a
  valid consent request and ask the user to approve the consent and confirm. Send a valid consent handle to receive
  APPROVED status. Send a consent fetch request and finally send a consent notification request with valid timestamp
  +16 min from current time and Verify that the error response is received.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.ethe timestamp is in "+16" or "-16" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 3004_4 On calling POST Consent Notification API, set the POST consent response in FIP mock server. Send a
  valid consent request and ask the user to approve the consent and confirm. Send a valid consent handle to receive
  APPROVED status. Send a consent fetch request and finally send a consent notification request with valid timestamp
  -16 min from current time and Verify that the error response is received.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+16" or "-16" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
