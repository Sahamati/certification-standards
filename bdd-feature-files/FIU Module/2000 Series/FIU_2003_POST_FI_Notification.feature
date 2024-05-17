Feature: On calling POST FI request API, verify that on sending FI Notification with invalid version, the
  error response is received.

  Scenario: 2003_1 Ask the user to send the valid FI request to Mock AA for pre generated consent.
  Check that the FI request is received at Mock AA and send the FI notification request with
  incorrect version number from settings. Verify that the HTTP status code 404 is displayed in
  response.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code 404 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is NoSuchVersion
    And   Verify that the version is supported version

  Scenario: 2003_2 Ask the user to send the valid FI request to Mock AA for pre generated consent. Check if FI
  request is received at Mock AA and send the FI notification request by adding an extra digit at the end of correct
  version number. Verify that the HTTP status code 404 is displayed in response.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code 404 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is NoSuchVersion
    And   Verify that the version is supported version

  Scenario: 2003_3 Ask the user to send the valid FI request to Mock AA for pre generated consent. Check if FI
  request is received at Mock AA and send the FI notification request by removing the last character digit at the
  end of correct version number. Verify that the HTTP status code 404 is displayed in response.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code 404 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is NoSuchVersion
    And   Verify that the version is supported version
