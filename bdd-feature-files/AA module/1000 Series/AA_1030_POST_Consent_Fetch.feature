Feature: On calling POST Consent Fetch Flow API, verify that on sending the consent fetch
  request for a consent that is paused, the consent with PAUSED status is received.

  Scenario: 1030_1 On calling POST Consent Fetch Flow API, Use the pre-linked user details
  from settings, send a valid consent request,set the Post consent response on mock server,
  ask the user to approve the consent & confirm, send a valid consent handle to receive
  APPROVED status, set consent/notification response on FIP and FIU mock server,
  ask the user to pause the consent & confirm and then send a consent fetch request and then
  Verify that success response is received.
    Given Calling the "POST /Consent/fetch" request API
    When  POST action is performed
    Then  Verify that the response code 200 is received
    And   Verify that the response status is 'PAUSED'
