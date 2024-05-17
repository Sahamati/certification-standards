Feature: On calling POST FI Request API, verify that on sending FI request with invalid
  consentId the error response is received.

  Scenario: 2008_1 On calling the POST FI Request API, use the pre-generated consent details from settings. Use a random
  UUID as consentId and Verify that the HTTP status code 400 is received.
    Given Calling the "POST /FI/request" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidConsentId
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2008_2 On calling the POST FI Request API, use the pre-generated consent details from settings. Use the
  valid consentId and add an extra character at the end and Verify that the HTTP status code 400 is received.
    Given Calling the "POST /FI/request" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidConsentId
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2008_3 On calling the POST FI Request API, use the pre-generated consent details from settings. Use the
  valid consentId and remove the last character and Verify that the HTTP status code 400 is received.
    Given Calling the "POST /FI/request" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidConsentId
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
