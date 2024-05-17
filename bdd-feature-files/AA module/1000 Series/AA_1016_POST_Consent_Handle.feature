Feature: On calling POST Consent Handle request API,Verify that on sending consent
  handle request with invalid consentHandle, error response is received.

  Scenario: 1016_1 On calling POST Consent Handle request API, use the pre-linked user details from settings.
  send a valid consent request with valid consentHandle and remove a character from last and
  Verify that the error response is received.
    Given Calling the "POST /Consent/handle" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidConsentHandle
    And   Verify that the version is supported version

  Scenario: 1016_2 On calling POST Consent Handle request API, use the pre-linked user details from settings.
  send a valid consent request with valid consentHandle and add a character at the end and
  Verify that the error response is received.
    Given Calling the "POST /Consent/handle" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidConsentHandle
    And   Verify that the version is supported version

  Scenario: 1016_3 On calling POST Consent Handle request API, use the pre-linked user details from settings.
  Generate and use the random UUID and Verify that the error response is received.
    Given Calling the "POST /Consent/handle" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidConsentHandle
    And   Verify that the version is supported version
