Feature: On calling POST Consent Notification API, verify that on responding with invalid version for
  consent handle request, error response is received for consent notification request.

  Scenario: 1024_1 Set the post consent request response and consent handle request with incorrect version number
  from settings. Ask the user to generate consent request from FIU for Mock AA. Check that the consent request is
  received at Mock server. Check that the consent handle request is received at mock server. Check with FIU SPOC
  that the consentHandle response is discarded by FIU.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed

  Scenario: 1024_2 Set the post consent request response and consent handle request with an extra digit at the end
  of correct version number. Ask the user to generate consent request from FIU for Mock AA. Check that the consent
  request is received at Mock server. Check that the consent handle request is received at mock server. Check with
  FIU SPOC that the consentHandle response is discarded by FIU.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed

  Scenario: 1024_3 Set the post consent request response and consent handle request. Remove the last character
  or digit at the end of correct version number. Ask the user to generate consent request from FIU for Mock AA.
  Check that the consent request is received at Mock server. Check that the consent handle request is received
  at mock server. Check with FIU SPOC that the consentHandle response is discarded by FIU.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
