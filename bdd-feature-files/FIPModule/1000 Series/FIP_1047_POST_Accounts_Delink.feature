Feature: On Calling Account delink request with a invalid customerAddress and check if it
  is responding with a bad request.

  Scenario: 1047_1 Send Account delink request with Invalid CustomerAddress validation,
  Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/delink" Flow API
    When  POST Action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id of request and response should match

  Scenario: 1047_2 Send Account delink request with Invalid CustomerAddress validation for
  alternate customer id of same aa(id),which is not linked with this account and Verify
  that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/delink" Flow API
    When  POST Action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from the current time stamp
    And   Verify that the Error code is InvalidLinkRefNumber
    And   Verify that the version is supported version
    And   Verify that the txnid id of request and response should match
