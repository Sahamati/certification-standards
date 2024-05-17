Feature: On calling POST Consent Notification API, verify that on responding with invalid JWS signature for
  consent handle request, error response is received for consent notification request.

  Scenario: 1030_1 Set the post Consent response on mock server. Set the consent handle with invalid JWS signature
  in mock server. Ask the user to raise consent request for mock AA. Check that the Post consent and consentHandle
  request is received at mock server. Check with FIU SPOC that the consentHandle response is discarded.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
