Feature: On calling FIP and FIU Notifications API, verify that on FIP responding with incorrect
  account details for FI fetch request from AA, FI notification with error status is sent
  back to FIU.

  Scenario: 2037_1 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings, set a
  valid FI response in mock FIP. Send a FI request to AA and set the Random linkRefNumber in FI fetch
  response in mock FIP. Set the FI notification response in FIU mock server and send a FI ready notification to AA.
  and wait to receive FI notification in mock FIU.
    Given Calling the "FIP and FIU Notifications" Flow API
    When  FIP and FIU Notifications API, action is performed
    Then  Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
  matching the session id received in the FI response from AA
    And   Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
  is FAILED

  Scenario: 2037_2 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings, set a
  valid FI response in mock FIP. Send a FI request to AA and correct the linkRefNumber with last character removed and
  set the FI fetch response in mock FIP. Set the FI notification response in FIU mock server and send a FI ready notification to AA.
  and wait to receive FI notification in mock FIU.
    Given Calling the "FIP and FIU Notifications" Flow API
    When  FIP and FIU Notifications API, action is performed
    Then  Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
  matching the session id received in the FI response from AA
    And   Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
  is FAILED

  Scenario: 2037_3 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings, set a
  valid FI response in mock FIP. Send a FI request to AA and correct the linkRefNumber add an extra character
  at the end and set the FI fetch response in mock FIP. Set the FI notification response in FIU mock server and send a
  FI ready notification to AA and wait to receive FI notification in mock FIU.
    Given Calling the "FIP and FIU Notifications" Flow API
    When  FIP and FIU Notifications API, action is performed
    Then  Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
  matching the session id received in the FI response from AA
    And   Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
  is FAILED

  Scenario: 2037_4 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings, set a
  valid FI response in mock FIP. Send a FI request to AA and set the Random maskedAccNumber in FI fetch
  response in mock FIP. Set the FI notification response in FIU mock server and send a FI ready notification to AA.
  and wait to receive FI notification in mock FIU.
    Given Calling the "FIP and FIU Notifications" Flow API
    When  FIP and FIU Notifications API, action is performed
    Then  Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
  matching the session id received in the FI response from AA
    And   Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
  is FAILED

  Scenario: 2037_5 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings, set a
  valid FI response in mock FIP. Send a FI request to AA and correct the maskedAccNumber with last character removed
  and set the FI fetch response in mock FIP. Set the FI notification response in FIU mock server and send a
  FI ready notification to AA and wait to receive FI notification in mock FIU.
    Given Calling the "FIP and FIU Notifications" Flow API
    When  FIP and FIU Notifications API, action is performed
    Then  Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
  matching the session id received in the FI response from AA
    And   Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
  is FAILED

  Scenario: 2037_6 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings, set a
  valid FI response in mock FIP. Send a FI request to AA and correct the maskedAccNumber and add an extra character at
  the end and set the FI fetch response in mock FIP. Set the FI notification response in FIU mock server and send a
  FI ready notification to AA and wait to receive FI notification in mock FIU.
    Given Calling the "FIP and FIU Notifications" Flow API
    When  FIP and FIU Notifications API, action is performed
    Then  Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
  matching the session id received in the FI response from AA
    And   Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
  is FAILED

  Scenario: 2037_7 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings, set a
  valid FI response in mock FIP. Send a FI request to AA and set the linkRefNumber and maskedAccNumber of an account
  that is linked to the current  customerId but not part of pre-generated consent and set the FI fetch response in mock
  FIP. Set the FI notification response in FIU mock server and send a FI ready notification to AA.
  and wait to receive FI notification in mock FIU.
    Given Calling the "FIP and FIU Notifications" Flow API
    When  FIP and FIU Notifications API, action is performed
    Then  Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
  matching the session id received in the FI response from AA
    And   Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
  is FAILED
