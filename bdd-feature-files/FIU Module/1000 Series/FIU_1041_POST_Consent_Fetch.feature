Feature: On calling POST Consent Fetch API, verify that on responding with invalid JWS signature for consent fetch request,
  consent generation failure is communicated to FIU SPOC.

  Scenario: 1041_1 Set the Consent post request response and the consent handle request response with 'PENDING'
  status on Mock server. Ask the user to raise the consent request on MOCK AA and check that the Post consent
  request is received in mock server. Set the consent fetch response with invalid JWS signature on mock server.
  Send the consent notification request with status as ACTIVE. Ask the user if failure message has been notified.
  Verify that the consent generation failure is communicated to FIU SPOC.
    Given Calling the "POST /Consent/fetch" Flow API
    When  POST action is performed
    Then  Verify that the consent generation failure is communicated to FIU SPOC
