Feature: On Calling Account link verify request for a valid token and RefNumber
  received by linking a single account with JWS signature of regular AA and  aa api
  key of alternate AA, error response is received.

  Scenario:1066_1 Pick a single user account with first supported FIType and send single
  account link request and then send single account link verify request with aa api key of
  alternate AA and Verify that HTTP 400 is displayed.
    Given Calling the "POST /Accounts/link/verify" Flow API
    When  POST action is performed
    Then  Reponse code should be HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Error code should be InvalidRequest/SignatureDoesNotMatch
    And   Ver should  be supported version
