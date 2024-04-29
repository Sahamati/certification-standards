Feature: On calling POST Consent Fetch API, verify that on responding with status REVOKED for consent fetch request, FIU
  system does not allow the FIU SPOC to request for FI.

  Scenario: 1035_1 Set the Consent post request response and the consent handle request response with 'PENDING'
  status on Mock server. Ask the user to raise the consent request on MOCK AA and check that the Post consent
  request is received in mock server. Set the consent fetch response with consent status as REVOKED.
  Send the consent notification request.  Ask user if is able to do data request. Verify that the FIU system does
  not allow the FIU SPOC to request for FI.
    Given Calling the "POST /Consent/fetch" Flow API
    When  POST action is performed
    Then  Verify that the FIU system does not allow the FIU SPOC to request for FI
