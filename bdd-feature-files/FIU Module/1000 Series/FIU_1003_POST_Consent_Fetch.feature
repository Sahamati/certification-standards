Feature:On calling POST Consent Fetch API, verify that consentId request received at
  AA is the valid consentId.

  Scenario: 1003_1 Set the Consent post request response and the consent handle request response with
  'PENDING' status on Mock AA. Ask the user to raise the consent request on MOCK AA and verify
  that the consent request is received at AA. Set the Consent fetch request response on Mock AA
  and send the consent notification with "Active" status, wait to receive the consentId get
  request at AA. Verify the consentId with the consentId set in consent notification API.
    Given Calling the "POST /Consent/fetch" Flow API
    When  POST action is performed
    Then  Verify that the consentId received in Mock is equal to the consentId set in response
