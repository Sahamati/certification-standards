Feature: On calling POST Consent Fetch Flow API, Verify that on sending consent fetch request
  as an alternate FIU for a valid consentId of regular FIU, the error response is received.

  Scenario: 1028_1 On calling POST Consent Fetch Flow API, Use the pre-linked user details
  from settings.Set the Post consent response on mock server, send a valid consent request,
  ask the user to approve the consent & confirm, send a valid consent handle request and try
  the following, Use the valid consentId, but send the consent fetch request as alternate FIU
  and Verify that error response is received.
    Given Calling the "POST /Consent/fetch" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidConsentId
    And   Verify that the version is supported version
