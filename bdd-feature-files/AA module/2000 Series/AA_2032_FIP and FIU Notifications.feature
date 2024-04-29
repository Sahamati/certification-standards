Feature: On calling FIP and FIU Notifications API, verify that on FIP responding with
  basic invalid values for FI fetch request from AA, the FI notification with error status
  is sent back to FIU.

  Scenario: 2032_1 On calling FIP and FIU Notifications API, Use the pre-generated consent
  details from settings, set a valid FI response in mock FIP, send a FI request to AA,
  try setting the following invalid values for FI fetch response in mock FIP, set FI
  notification response in FIU mock server, send a FI ready notification to AA and finally
  wait to receive FI notification in mock FIU and each time one required field set to null.
    Given Calling the "FIP and FIU Notifications" Flow API
    When  FIP and FIU Notifications API, action is performed
    Then  Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
  matching the session id received in the FI response from AA
    And   Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
  is FAILED

  Scenario: 2032_2 On calling FIP and FIU Notifications API, On calling FIP and FIU Notifications API, Use the pre-generated consent
  details from settings, set a valid FI response in mock FIP, send a FI request to AA,
  try setting the following invalid values for FI fetch response in mock FIP, set FI
  notification response in FIU mock server, send a FI ready notification to AA and finally
  wait to receive FI notification in mock FIU and Each time one required field set to empty string.
    Given Calling the "FIP and FIU Notifications" Flow API
    When  FIP and FIU Notifications API, action is performed
    Then  Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
  matching the session id received in the FI response from AA
    And   Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
  is FAILED

  Scenario: 2032_3 On calling FIP and FIU Notifications API, On calling FIP and FIU Notifications API, Use the pre-generated consent
  details from settings, set a valid FI response in mock FIP, send a FI request to AA,
  try setting the following invalid values for FI fetch response in mock FIP, set FI
  notification response in FIU mock server, send a FI ready notification to AA and finally
  wait to receive FI notification in mock FIU and Each time one array field set to empty array.
    Given Calling the "FIP and FIU Notifications" Flow API
    When  FIP and FIU Notifications API, action is performed
    Then  Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
  matching the session id received in the FI response from AA
    And   Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
  is FAILED

  Scenario: 2032_4 On calling FIP and FIU Notifications API, On calling FIP and FIU Notifications API, On calling FIP and FIU Notifications API, Use the pre-generated consent
  details from settings, set a valid FI response in mock FIP, send a FI request to AA,
  try setting the following invalid values for FI fetch response in mock FIP, set FI
  notification response in FIU mock server, send a FI ready notification to AA and finally
  wait to receive FI notification in mock FIU and Each time one object field set to empty object.
    Given Calling the "FIP and FIU Notifications" Flow API
    When  FIP and FIU Notifications API, action is performed
    Then  Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
  matching the session id received in the FI response from AA
    And   Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
  is FAILED
