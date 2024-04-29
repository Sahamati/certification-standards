Feature: On Calling Account delink request with invalid linkRefNumber and check if it is responding
  with a HTTP Status code 400 (Bad Request).

  Scenario: 1050_1 Send Account delink request using random linkRefNumber and Verify that HTTP 400 is displayed
  in response.
    Given Calling the "POST /Accounts/delink" Flow API
    When  Action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from the current time stamp.
    And   Verify that the Error code is InvalidLinkRefNumber
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1050_2 Send Account delink request using RefNumber received in the link request as linkRefNumber and
  Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/delink" Flow API
    When  POST Action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from the current time stamp.
    And   Verify that the Error code is InvalidLinkRefNumber
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1050_3 Send Account delink request using a valid linkRefNumber of other customerAddress and Verify
  that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/delink" Flow API
    When  POST Action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from the current time stamp.
    And   Verify that the Error code is InvalidLinkRefNumber
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
