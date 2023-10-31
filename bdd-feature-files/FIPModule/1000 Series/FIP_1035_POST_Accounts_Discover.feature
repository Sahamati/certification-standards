Feature: On Calling POST Account discovery API with valid customer details with
  JWS signature of regular AA and aa api key of alternate AA, error response is received.

  Scenario: 1035_1 Pick a single user account with first supported FIType and
  send single account discovery request with AA api key of alternate AA and Verify that
  HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/discover" Flow API
    When  POST action is performed
    Then  Reponse code should be HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Error code should be InvalidRequest
    And   Ver should  be supported version
    And   Txnid should be same as the txnid from request
