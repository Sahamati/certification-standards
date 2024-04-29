Feature: On Calling POST Consent request with valid details and then send one more valid consent
  request with the same consentId and check if the second request responds with HTTP status 400 (Bad request).

  Scenario: 2016_1 Use the pre-linked user details from settings. Send POST Account Consent request twice
  with same value in consentId field. Verify that HTTP 400 is displayed in second response.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
