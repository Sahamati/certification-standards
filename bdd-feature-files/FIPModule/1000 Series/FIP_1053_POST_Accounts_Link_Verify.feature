Feature: On Calling Account link verify request for a valid token and RefNumber received by linking
  a single account and check if it is responding with a valid response code and JSON structure.

  Scenario: 1053_1 Pick a single user account with first supported FIType and send single account link request
  and then send single account link verify request.Send Account link verify request sent with all valid details and
  Verify that HTTP 200 is displayed in response.
    Given Calling the POST "/Accounts/link/verify" Flow API
    When  POST action is performed
    Then  Verify that the Response code 200 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes fromthe current time stamp.
    And   Verify that the version is supported version
    And   Verify that customerAddress and accRefNumber should match the values sent in the initial link request
    And   Status should be LINKED
