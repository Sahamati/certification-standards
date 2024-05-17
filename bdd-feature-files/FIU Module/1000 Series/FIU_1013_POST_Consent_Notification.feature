Feature: On calling POST Consent Notification API, verify that on sending consent notification
  with invalid version, error response is received.

  Scenario: 1013_1 Set the Consent post request response, and Consent Handle request response with
  'PENDING' status on Mock AA. Ask the user to raise the consent request in MOCK AA and verify that the
  consent request is received at AA. Set the Consent get request on Mock AA response, send the consent
  notification with incorrect version number from settings with 'ACTIVE' status and verify that the error
  message is received.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 404 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is NoSuchVersion
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1013_2 Set the Consent post request response, and Consent Handle request response with
  'PENDING' status on Mock AA. Ask the user to raise the consent request in MOCK AA and verify that the
  consent request is received at AA. Set the Consent get request on Mock AA response, send the consent
  notification with extra digit or character at the end of correct version number with 'ACTIVE' status and verify that the error
  message is received.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 404 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is NoSuchVersion
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1013_3 Set the Consent post request response, and Consent Handle request response with
  'PENDING' status on Mock AA. Ask the user to raise the consent request in MOCK AA and verify that the
  consent request is received at AA. Set the Consent get request on Mock AA response, send the consent
  notification by removing the extra digit or character at the end of correct version number with 'ACTIVE' status and verify that the error
  message is received.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 404 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is NoSuchVersion
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
