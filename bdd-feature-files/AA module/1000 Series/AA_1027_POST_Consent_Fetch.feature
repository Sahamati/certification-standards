Feature: On calling POST Consent Fetch Flow API, verify that on sending the consent
  fetch request with invalid consentId, error response is received.

  Scenario: 1027_1 On calling POST Consent Fetch Flow API, Use the pre-linked user details
  from settings,set the Post consent response on mock server, send a valid consent request,
  ask the user to approve the consent & confirm, send a valid consent handle request and then
  send consent fetch request with empty string in consentId field and expect response as
  HTTP status 400 then Verify that the error response is received.
    Given Calling the "POST /Consent/fetch" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version

  Scenario: 1027_2 On calling POST Consent Fetch Flow API, Use the pre-linked user details
  from settings,set the Post consent response on mock server,send a valid consent request,
  ask the user to approve the consent & confirm, send a valid consent handle request and then
  send consent fetch request with valid consentId, but remove a char from last and expect
  response as HTTP status 400 then Verify that the error response is received.
    Given Calling the "POST /Consent/fetch" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidConsentId
    And   Verify that the version is supported version

  Scenario: 1027_3 On calling POST Consent Fetch Flow API, Use the pre-linked user details
  from settings,set the Post consent response on mock server,send a valid consent request,
  ask the user to approve the consent & confirm, send a valid consent handle request and then
  send consent fetch request with valid consentId, but add a char at the end and expect response as
  HTTP status 400 then Verify that the error response is received.
    Given Calling the "POST /Consent/fetch" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidConsentId
    And   Verify that the version is supported version

  Scenario: 1027_4 On calling POST Consent Fetch Flow API, Use the pre-linked user details
  from settings,set the Post consent response on mock server, send a valid consent request,
  ask the user to approve the consent & confirm, send a valid consent handle request and then
  send consent fetch request by generating and using the random UUID and expect response as
  HTTP status 400 and Verify that the error response is received.
    Given Calling the "POST /Consent/fetch" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidConsentId
    And   Verify that the version is supported version
