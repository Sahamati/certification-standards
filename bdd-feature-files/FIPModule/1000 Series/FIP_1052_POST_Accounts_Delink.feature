Feature: On Calling Account delink request as alternate AA with details of regular AA, error response
  is received.

  Scenario: 1052_1 Use the user with single account in first supported FIType, send a valid account link request
  as regular AA, get the received OTP from the user and send a valid account link verify request for regular AA.
  Use the same user and account details, send a valid account link request as alternate AA, get the received
  OTP from user and send a valid account link verify request for alternate AA. Send Account delink request as
  alternate AA with customer id of regular AA and Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/delink" Flow API
    When  POST Action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e and the timestamp is in "+15" or "-15" minutes from the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1052_2 Use the user with single account in first supported FIType, send a valid account link request
  as regular AA, get the received OTP from the user and send a valid account link verify request for regular AA.
  Use the same user and account details, send a valid account link request as alternate AA, get the received
  OTP from user and send a valid account link verify request for alternate AA. Send Account delink request as
  alternate AA with linkRefNumber of regular AA and Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/delink" Flow API
    When  POST Action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e and the timestamp is in "+15" or "-15" minutes from the current time stamp
    And   Verify that the Error code is InvalidLinkRefNumber
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
