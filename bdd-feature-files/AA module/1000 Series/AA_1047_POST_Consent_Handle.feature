Feature: On calling POST Consent Handle request API,Verify that on sending consent
  handle request with Client API key of alternate FIU, error response is received.

  Scenario: 1047_1 On calling POST Consent Handle request API,Use the pre-linked user details
  from settings and  Set Post consent response on Mock FIP. Send a valid consent request,
  send consent handle request to receive PENDING status, ask the user to link a account
  and approve the consent & confirm and then send a valid consent handle request with
  client_api_key of alternate FIU and Verify that the error response is received.
    Given Calling the "POST /Consent/handle" Flow API
    When  POST action is performed
    Then  Verify that the reponse code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest/SignatureDoesNotMatch
    And   Verify that the version is supported version
