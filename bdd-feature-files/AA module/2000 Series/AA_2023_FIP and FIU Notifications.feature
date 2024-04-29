Feature: On calling FIP and FIU Notifications API, verify that on FIP responding with
  incorrect consentId for FI request from AA, FI notification with error status is sent
  back to FIU.

  Scenario: 2023_1 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings and
  set the invalid values for FI response in mock FIP. Set the FI notification response in FIU mock server and send a
  valid FI request to AA. Wait to receive FI notification in mock FIU. Generate a new UUID and use that.
    Given Calling the "FIP and FIU Notifications" Flow API
    When  FIP and FIU Notifications API, action is performed
    Then  Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
  matching the session id received in the FI response from AA
    And   Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus is
  FAILED

  Scenario: 2023_2 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings and
  set the invalid values for FI response in mock FIP. Set the FI notification response in FIU mock server and send a
  valid FI request to AA. Wait to receive FI notification in mock FIU. Use the valid consentId and add an extra
  character at the end.
    Given Calling the "FIP and FIU Notifications" Flow API
    When  FIP and FIU Notifications API, action is performed
    Then  Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
  matching the session id received in the FI response from AA
    And   Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus is
  FAILED

  Scenario: 2023_3 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings and
  set the invalid values for FI response in mock FIP. Set the FI notification response in FIU mock server and send a
  valid FI request to AA. Wait to receive FI notification in mock FIU. Use the valid consentId and remove the last
  character.
    Given Calling the "FIP and FIU Notifications" Flow API
    When  FIP and FIU Notifications API, action is performed
    Then  Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
  matching the session id received in the FI response from AA
    And   Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus is
  FAILED
