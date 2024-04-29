Feature: On Calling POST FI Request with invalid consent object and check if it is responding
  with HTTP status code 400 (Bad request).

  Scenario: 3006_1 Use the pre-linked user details from settings,set Consent/notification response in mock
  server, send one valid consent post request and then try the following. Send POST Account FIRequest with
  random consentId in Consent objects id field. Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /FI/Request" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidConsentId
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 3006_2 Use the pre-linked user details from settings,set Consent/notification response in mock
  server, send one valid consent post request and then try the following. Send POST Account FIRequest with
  consentId generated for alternate aa id in Consent objects id field. Verify that HTTP 400 is displayed
  in response.
    Given Calling the "POST /FI/Request" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidConsentId
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 3006_3 Use the pre-linked user details from settings,set Consent/notification response in mock
  server, send one valid consent post request and then try the following. Send POST Account FIRequest by
  adding extra character in Consent objects digitalSignature field in request body. Verify that HTTP 400 is
  displayed in response.
    Given Calling the "POST /FI/Request" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is SignatureDoesNotMatch
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 3006_4 Use the pre-linked user details from settings,set Consent/notification response in mock
  server, send one valid consent post request and then try the following. Send POST Account FIRequest with
  signature generated with different key in Consent objects digitalSignature field in request body. Verify
  that HTTP 400 is displayed in response.
    Given Calling the "POST /FI/Request" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is SignatureDoesNotMatch
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
