Feature: On calling FIP and FIU Notifications API, verify that on regular FIP responding
  with account details of alternate FIP for FI fetch request from AA, the FI notification
  with error status is sent back to FIU.

  Scenario: 2038_1 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings and
  follow the below steps:
  1. Generate a random  customerId.
  2. Ask the user to register the generated customerId, link a particular account in regular mock FIP and link a
  particular account in alternate mock FIP in AA app and confirm.
  3. Set POST consent response in FIP mock server.
  4. Send a valid consent request.
  5. Ask the user to select accounts one account from regular mock FIPs, approve the consent and confirm.
  6. Send a valid consent handle to receive APPROVED status.
  7. Send a consent fetch request.
  8. Set a valid FI response in mock FIP.
  9. Send a FI request to AA.
  10. Set the FI fetch response in mock FIP and use the alternate FIP's linked account details.
  11. Set the FI notification response in FIU mock server.
  12. Send a FI ready notification to AA.
  13. Wait to receive FI notification in mock FIU.
    Given Calling the "FIP and FIU Notifications" Flow API
    When  FIP and FIU Notifications API, action is performed
    Then  Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
  matching the session id received in the FI response from AA
    And   Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
  is FAILED
