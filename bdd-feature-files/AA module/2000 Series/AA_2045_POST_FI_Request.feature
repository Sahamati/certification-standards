Feature: On calling POST FI Request API, Verify that on sending FI request with Client
  API key of alternate FIU, error response is received.

  Scenario: 2045_1 On calling POST FI Request API,Use the pre-generated consent details
  from settings, set a valid fi response on mock fip and send a valid FI request with
  client api key header of alternate FIU and Verify that the HTTP status code 400 is received.
    Given Calling the "POST /FI/request" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest/SignatureDoesNotMatch
    And   Verify that the version is supported version
