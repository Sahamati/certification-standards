Feature: On calling POST FI notification request API, Verify that on sending valid FI Notification
  with FIStatusNotification.sessionStatus as FAILED and confirm with FIU SPOC FI request is stopped and no
  FI Fetch is happening.

  Scenario: 2015_1 Ask the user to send valid FI request to Mock AA  for pre generated consent. Check that
  the FI request is received at Mock AA. Send the FI Notification with FIStatusNotification.sessionStatus as
  FAILED. Check with FIU SPOC that the FI request is stopped and no FI Fetch is happening.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the FI request is stopped and no FI Fetch is happening
