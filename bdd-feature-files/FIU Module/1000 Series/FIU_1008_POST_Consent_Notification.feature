Feature: On calling POST Consent Notification API, verify that on sending valid consent Notification
  with invalid consent handle, error response is received.

  Scenario: 1008_1 Set the Consent post request response, and Consent Handle request response with
  'PENDING' status on Mock AA. Ask the user to raise the consent request in MOCK AA and verify that the
  consent request is received at AA. Set the Consent get request on Mock AA. Send the valid Consent
  Notification Request for random consent handle. Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1008_2 Set the Consent post request response, and Consent Handle request response with
  'PENDING' status on Mock AA. Ask the user to raise the consent request in MOCK AA and verify that the
  consent request is received at AA. Set the Consent get request on Mock AA. Send the valid Consent
  Notification Request for consent handle by removing last character from Consent Handle. Verify that
  HTTP 400 is displayed in response.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1008_3 Set the Consent post request response, and Consent Handle request response with
  'PENDING' status on Mock AA. Ask the user to raise the consent request in MOCK AA and verify that the
  consent request is received at AA. Set the Consent get request on Mock AA. Send the valid Consent
  Notification Request for consent handle by adding extra character to Consent Handle. Verify that
  HTTP 400 is displayed in response.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
