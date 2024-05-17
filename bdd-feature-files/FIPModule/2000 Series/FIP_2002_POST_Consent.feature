Feature: On Calling POST Consent request with basic invalid values for each required
  field and check if it is responding with HTTP status code 400 (Bad request).

  Scenario: 2002_1 On Calling POST Consent request with null values set in required field. Verify that HTTP
  400 is displayed in response.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2002_2 On Calling POST Consent request with empty string value set in required fields
  and Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2002_3 On Calling POST Consent request with each time one enum field set to
  non enum value. Add an extra character at the end of last enum and remove the last
  character at the end of first enum and Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2002_4 On Calling POST Consent request with Empty array values set in required field. Verify that HTTP
  400 is displayed in response.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2002_5 On Calling POST Consent request with Fraction values set in required field. Verify that HTTP
  400 is displayed in response.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
