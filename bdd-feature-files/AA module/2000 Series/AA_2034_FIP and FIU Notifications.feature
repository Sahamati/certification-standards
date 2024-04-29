Feature: On calling FIP and FIU Notifications API, verify that on FIP responding with
  invalid timestamp for FI fetch request from AA, FI notification with error status is sent
  back to FIU.

  Scenario: 2034_1 On calling FIP and FIU Notifications API,Use the pre-generated consent
  details from settings, set a valid FI response in mock FIP, send a FI request to AA, try
  setting the following invalid timestamp in FI fetch response in mock FIP, set FI notification
  response in FIU mock server, send a FI ready notification to AA and finally wait to receive
  FI notification in mock FIU and set 2 to 3 standard timestamp formats which is not followed
  in spec.
    Given Calling the "FIP and FIU Notifications" Flow API
    When  FIP and FIU Notifications API, action is performed
    Then  Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
  matching the session id received in the FI response from AA
    And   Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
  is FAILED

  Scenario: 2034_2 On calling FIP and FIU Notifications API,Use the pre-generated consent
  details from settings, set a valid FI response in mock FIP, send a FI request to AA, try
  setting the following invalid timestamp in FI fetch response in mock FIP, set FI notification
  response in FIU mock server, send a FI ready notification to AA and finally wait to receive
  FI notification in mock FIU and Add an extra char at the end of proper timestamp.
    Given Calling the "FIP and FIU Notifications" Flow API
    When  FIP and FIU Notifications API, action is performed
    Then  Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
  matching the session id received in the FI response from AA
    And   Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
  is FAILED

  Scenario: 2034_3 On calling FIP and FIU Notifications API,Use the pre-generated consent
  details from settings, set a valid FI response in mock FIP, send a FI request to AA, try
  setting the following invalid timestamp in FI fetch response in mock FIP, set FI notification
  response in FIU mock server, send a FI ready notification to AA and finally wait to receive
  FI notification in mock FIU and Valid timestamp with +16 min from current time.
    Given Calling the "FIP and FIU Notifications" Flow API
    When  FIP and FIU Notifications API, action is performed
    Then  Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
  matching the session id received in the FI response from AA
    And   Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
  is FAILED

  Scenario: 2034_4 On calling FIP and FIU Notifications API,Use the pre-generated consent
  details from settings, set a valid FI response in mock FIP, send a FI request to AA, try
  setting the following invalid timestamp in FI fetch response in mock FIP, set FI notification
  response in FIU mock server, send a FI ready notification to AA and finally wait to receive
  FI notification in mock FIU and Valid timestamp with -16 min from current time.
    Given Calling the "FIP and FIU Notifications" Flow API
    When  FIP and FIU Notifications API, action is performed
    Then  Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
  matching the session id received in the FI response from AA
    And   Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
  is FAILED
