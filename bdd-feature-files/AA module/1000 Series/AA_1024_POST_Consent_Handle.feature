Feature: On calling POST Consent Handle request API,Verify that on sending consent
  handle request for an approved consent but user deregistered from AA, error response is received.

  Scenario: 1024_1 On calling POST Consent Handle request API,generate a random customerId,
  ask the user to register the generated customerId to AA, link 1 account and confirm.
  Set the Post consent response on mock server, Then send a valid consent request for that
  FIType, ask the user to approve the consent & confirm, send a consent handle request to
  receive APPROVED status, ask the user to deregister the customerId & confirm, and then
  send a consent handle request and then Verify that the error response is received.
    Given Calling the "POST /Consent/handle" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the version is supported version
    And   Verify that the Error code is InvalidConsentHandle
