Feature: On calling POST FI Request API, verify that on sending FI request with +16 and -16 min
  variation in timestamp, the error response is received.

  Scenario: 2005_1 On calling the POST FI Request API, use the pre-generated consent details
  from settings. Send the request with future timestamp i.e. current time +16 minutes in the
  timestamp field and Verify that HTTP status code 400 is received.
    Given Calling the "POST /FI/request" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+16" or "-16" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2005_2 On calling the POST FI Request API, use the pre-generated consent details
  from settings. Send the request with incorrect timestamp i.e. current time -16 minutes in
  the timestamp field and Verify that HTTP status code 400 is received.
    Given Calling the "POST /FI/request" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+16" or "-16" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
