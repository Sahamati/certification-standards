Feature:On calling POST Consent Handle API, Verify that ConsentHandle request received
  at AA is valid Consent handle.

  Scenario: 1002_1 Set the consent post request response in Mock AA, ask the user to raise the consent
  request in Mock AA and verify that the Consent Handle request is received at AA.
    Given Calling the "POST /Consent/handle" Flow API
    When  POST action is performed
    Then Response code should be 200
    Then  Verify that the Consent Handle request is received at AA
    And   Verify that Consent Handle value received in Mock is equal to the consent handle set in
          response
