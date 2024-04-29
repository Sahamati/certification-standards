Feature: On calling POST Consent Notification API, Verify that on sending valid consent
  Notification, success response is received.

  Scenario: 1004_1 Set the Consent post request response, and Consent Handle request response with
  'PENDING' status on Mock AA. Ask the user to raise the consent request in MOCK AA and
  verify that the consent request is received at AA. Set the Consent get request response
  on Mock AA,and send the Consent Notification as 'Active'.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 200 is displayed
    And   Verify that the field of Version contains the version of NBFC-AA Ecosystem API that
          currently supported
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the txnid id of request and response are matching
    And   Verify that the Response is displayed as "OK"
