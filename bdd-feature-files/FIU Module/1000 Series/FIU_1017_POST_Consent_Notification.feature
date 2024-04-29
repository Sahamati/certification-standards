Feature: On calling POST Consent Notification API, verify that on sending valid Consent Notification
  with EXPIRED status, FIU SPOC is not able to do FI Request.

  Scenario: 1017_1 Set the Consent post request response, and Consent Handle request response with
  'PENDING' status on Mock AA. Ask the user to raise the consent request in MOCK AA and verify that the
  consent request is received at AA. Set the consent get request response on Mock AA and send consent
  notification with Active status. Check that the consent id request received at Mock Server.
  Finally Send the Consent Notification with  consent Status as 'EXPIRED' and check that if Fi request
  is sent with success. Verify that user is not able to do FI Request.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that user is not able to do FI Request
