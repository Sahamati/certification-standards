Feature: On Calling Account delink request with invalid JWS API signature, error response is received.

  Scenario: 1059_1 Use a single user account with first supported FIType, send an account link request, send
  an account link verify request. Send Account delink request with valid details by Using the valid JWS
  signature but add one char to the end and Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/delink" Flow API
    When  POST Action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from the current time stamp
    And   Verify that the Error code is SignatureDoesNotMatch
    And   Verify that the version is supported version

  Scenario: 1059_2 Use a single user account with first supported FIType, send an account link request, send
  an account link verify request. Send Account delink request with valid details by Using the valid JWS
  signature but remove one char from the end and Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/delink" Flow API
    When  POST Action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from the current time stamp
    And   Verify that the Error code is SignatureDoesNotMatch
    And   Verify that the version is supported version

  Scenario: 1059_3 Use a single user account with first supported FIType, send an account link request, send
  an account link verify request. Send Account delink request with valid details by Generating the JWS
  signature using a different key that is not used for anything else and Verify that HTTP 400 is displayed
  in response.
    Given Calling the "POST /Accounts/delink" Flow API
    When  POST Action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from the current time stamp
    And   Verify that the Error code is SignatureDoesNotMatch
    And   Verify that the version is supported version

  Scenario: 1059_4 Use a single user account with first supported FIType, send an account link request, send
  an account link verify request. Send Account delink request with valid details by using the valid JWS
  signature, but do a small change in the request body data and Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/delink" Flow API
    When  POST Action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from the current time stamp
    And   Verify that the Error code is SignatureDoesNotMatch
    And   Verify that the version is supported version
