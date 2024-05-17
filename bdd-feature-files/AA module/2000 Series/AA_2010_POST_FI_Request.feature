Feature: On calling POST FI Request API, verify that on sending FI request as alternate
  FIU with valid consent details of the regular FIU, the error response is received.

  Scenario: 2010_1 On calling the POST FI Request API, use the pre-generated consent details
  from settings. Generate a valid FI request for regular FIU and send the request as
  alternate FIU and Verify that the HTTP status code 400 is received.
    Given Calling the "POST /FI/request" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
