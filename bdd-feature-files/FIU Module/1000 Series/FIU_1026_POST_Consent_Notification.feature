Feature: On calling POST Consent Notification API, verify that on responding with different ConsentHandle
  for consent handle request, error response is received for consent notification request.

  Scenario: 1026_1 Set the Post Consent response on Regular Mock and alternate Mock. Set the consent handle response on
  Regular Mock with consentHandle of Alternate Mock. Ask the user to raise consent request for regular and alternate
  mock AA. Check that the POST consent request is received at regular and alternate mock. Check with FIU SPOC that
  the consentHandle response is discarded or not.
    Given Calling the POST Consent Notification API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
