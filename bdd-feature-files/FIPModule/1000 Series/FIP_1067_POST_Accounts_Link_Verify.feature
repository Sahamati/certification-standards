Feature: On Calling Account link verify request with basic invalid values for each
  required field and check if it is responding with HTTP status code 400 (Bad request)

  Scenario: 1067_1 Pick a single user account with first supported FIType and
  send single account link request and then send single account link verify request with
  following variations, Send multiple request with each time one required field set to null
  and Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/link/verify" Flow API Flow API
    When  POST Action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e timestamp is in "+15" or "-15" minutes from the current time stamp
    And   Error code should be following according to fields
    And   Error code should be InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id of request and response should match


  Scenario: 1067_2 Pick a single user account with first supported FIType and send
  single account link request and then send single account link verify request with following
  variations, Send multiple request with each time one required field set to empty string
  ("""") and Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/link/verify" Flow API Flow API
    When  POST Action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e timestamp is in "+15" or "-15" minutes from the current time stamp
    And   Error code should be following according to fields
    And   Error code should be InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id of request and response should match
