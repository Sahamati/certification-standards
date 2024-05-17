Feature: On calling POST FI notification request API, verify that on sending valid FI Notification with
  FIStatusNotification.sessionStatus as EXPIRED, the FIU SPOC is not able to perform FI Fetch.

  Scenario: 2011_1 Ask the user to send valid FI request to Mock AA  for pre generated consent. Check that
  the FI request is received at Mock AA. Send the FI Notification with FIStatusNotification.sessionStatus as
  Expired. Ask the User is he is able view the Data. Verify that the user is not able to perform FI Fetch.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the user is not able to perform FI Fetch
