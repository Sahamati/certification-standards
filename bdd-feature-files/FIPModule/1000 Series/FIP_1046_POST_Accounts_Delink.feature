Feature: On Calling Account delink API with basic invalid values for each required
  field and check if it is responding with a bad request.

  Scenario: 1046_1 On Calling Account delink request with null values set in required field send multiple request with
  each time set one required field set to null and Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/delink" Flow API
    When  POST Action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e timestamp is in "+15" or "-15" minutes from the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id of request and response should match

  Scenario: 1046_2 On Calling Account delink request with Empty String values set in required field send multiple request with
  each time set one required field set to empty string("") and Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/delink" Flow API
    When  POST Action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id of request and response should match
