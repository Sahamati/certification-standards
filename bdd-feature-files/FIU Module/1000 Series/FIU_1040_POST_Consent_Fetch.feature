Feature: On calling POST Consent Fetch API, verify that on responding with signedConsent signed with alternate
  AA for consent fetch request, the consent generation failure is communicated to FIU SPOC.

  Scenario: 1040_1 Set the post consent request response on Mock server, ask the user to send consent request for
  Mock AA, Check that the post Consent request received at Mock server. Set the consent fetch response with
  signedConsent generated as alternate AA Mock server. Send Consent notification request with status as ACTIVE.
  Ask user if failure message has been notified. Verify that the consent generation failure is communicated to
  FIU SPOC.
    Given Calling the "POST /Consent/fetch" Flow API
    When  POST action is performed
    Then  Verify that the consent generation failure is communicated to FIU SPOC
