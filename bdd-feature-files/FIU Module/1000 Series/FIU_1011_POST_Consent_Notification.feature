Feature: On calling POST Consent Notification API, verify with basic invalid values for each
  field of POST consent request, error response is received for Consent Notification request.

  Scenario: 1011_1 Set the Consent post request response on Mock AA with null value set in one required field.
  Ask the user to raise the consent request in MOCK AA and verify that the consent request is received at AA.
  Send the consent notification as 'Active'. Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1011_2 Set the Consent post request response on Mock AA with empty string set in one required
  field. Ask the user to raise the consent request in MOCK AA and verify that the consent request is
  received at AA. Send the consent notification as 'Active'. Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1011_3 Set the Consent post request response on Mock AA with '0'(Zero) set in one required
  field. Ask the user to raise the consent request in MOCK AA and verify that the consent request is
  received at AA. Send the consent notification as 'Active'. Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1011_4 Set the Consent post request response on Mock AA with empty object set in one required
  field. Ask the user to raise the consent request in MOCK AA and verify that the consent request is
  received at AA. Send the consent notification as 'Active'. Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
