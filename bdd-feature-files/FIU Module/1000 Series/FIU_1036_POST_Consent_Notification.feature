Feature: On calling POST Consent Notification API, verify that on sending consent notification request with invalid
  JWS API signature, error response is received.

  Scenario: 1036_1 Set the post consent request response on Mock server, ask the user to send consent request for
  Mock AA, Check that the post Consent request received at Mock server.Send the consent or notification with
  status as ACTIVE with invalid JWS signature. Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is  SignatureDoesNotMatch
    And   Verify that the version is supported version
