Feature: On Calling POST Account Link API  with invalid account details and check if it is responding with
  error response.

  Scenario: 1042_1 Try with the invalid test user and account JSON available from settings. Send Account Link
  request with Invalid Account Details Validation for FIType DEPOSIT and Verify that HTTP 404 is displayed
  in response.
    Given Calling the "POST /Accounts/link" Flow API
    When  POST action is performed
    Then  Verify that the Response code 404 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is AccountNotFound
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1042_2 Pick user which has all FITypes and try with valid account details but mismatch the FIType.
  Try one hit for each supported FIType. Send Account Link request with Invalid Account Details Validation for
  mismatch FIType DEPOSIT and Verify that HTTP 404 is displayed in response.
    Given Calling the "POST /Accounts/link" Flow API
    When  POST action is performed
    Then  Verify that the Response code 404 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is AccountNotFound
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1042_3 Pick user which has all FITypes and try with valid account details but mismatch the FIType.
  Try one hit for each supported FIType. Send Account Link request with Invalid Account Details Validation for
  mismatch FIType TERM_DEPOSIT and Verify that HTTP 404 is displayed in response.
    Given Calling the "POST /Accounts/link" Flow API
    When  POST action is performed
    Then  Verify that the Response code 404 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is AccountNotFound
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1042_4 Pick user which has all FITypes and try with valid account details but mismatch the FIType.
  Try one hit for each supported FIType. Send Account Link request with Invalid Account Details Validation for
  mismatch FIType RECURRING_DEPOSIT and Verify that HTTP 404 is displayed in response.
    Given Calling the "POST /Accounts/link" Flow API
    When  POST action is performed
    Then  Verify that the Response code 404 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is AccountNotFound
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1042_5 Try few with proper details but change the accType to something else from the enum. Send
  Account Link request with Invalid Account Details Validation for invalid accType for FIType DEPOSIT and Verify
  that HTTP 404 is displayed in response.
    Given Calling the "POST /Accounts/link" Flow API
    When  POST action is performed
    Then  Verify that the Response code 404 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is AccountNotFound
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1042_6 Try few with proper details but change the accType to something else from the enum. Send
  Account Link request with Invalid Account Details Validation for invalid accType for FIType TERM_DEPOSIT and
  Verify that HTTP 404 is displayed in response.
    Given Calling the "POST /Accounts/link" Flow API
    When  POST action is performed
    Then  Verify that the Response code 404 is displayed
    And   Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is AccountNotFound
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1042_7 Try few with proper details but change the accType to something else from the enum. Send
  Account Link request with Invalid Account Details Validation for invalid accType for FIType RECURRING_DEPOSIT
  and Verify that HTTP 404 is displayed in response.
    Given Calling the "POST /Accounts/link" Flow API
    When  POST action is performed
    Then  Verify that the Response code 404 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is AccountNotFound
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
