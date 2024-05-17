Feature: On Calling Account Link API with basic invalid values for each required field
  and check if it is responding with a bad request.

  Scenario: 1037_1 On Calling POST Account Link with null values set in required field. Verify that HTTP
  400 is displayed in response.
    Given Calling the "POST /Accounts/link" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1037_2 On Calling POST Account Link with Empty String values set in required field. Verify that HTTP
  400 is displayed in response.
    Given Calling the "POST /Accounts/link" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1037_3 On Calling POST Account Link with Empty array values set in required field. Verify that HTTP
  400 is displayed in response.
    Given Calling the "POST /Accounts/link" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1037_4 On Calling POST Account Link with each time one enum field set to non
  enum value. Add an extra character at the end of last enum and remove the last character
  at the end of first enum and Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/link"   Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
