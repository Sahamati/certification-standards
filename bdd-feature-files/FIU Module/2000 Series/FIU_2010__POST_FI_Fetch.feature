Feature: On calling POST FI Fetch request API, verify that on sending valid FI Notification, valid FI
  fetch is received at Mock AA.

  Scenario: Ask the user to raise FI request in MOCK AA for pre generated consent, check that the FI request is
  received at AA. Send FI Notification with ready status. Wait for 2 seconds and verify that the Fi fetch received
  at Mock AA and validate the request received.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the session Id received is the valid session id
    And   Verify that the if the FIP id is present, it is a valid FIP id
    And   Verify that the if the linkRefNumber present, it is a valid linkRefNUmber
