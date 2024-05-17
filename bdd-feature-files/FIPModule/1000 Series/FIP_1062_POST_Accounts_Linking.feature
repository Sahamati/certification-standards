Feature: On Calling POST Account Link API request with valid customer and single account
  detail with JWS signature of regular AA and  AA api key of alternate AA,error response is
  received.

  Scenario:1062_1 Pick a single user account with first supported FIType and send single
  account link request with aa api key of alternate AA and Verify that HTTP 400 is displayed.
    Given Calling the "POST /Accounts/link" Flow API
    When  POST action is performed
    Then  Reponse code should be HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Error code should be InvalidRequest/SignatureDoesNotMatch
    And   Ver should  be supported version
