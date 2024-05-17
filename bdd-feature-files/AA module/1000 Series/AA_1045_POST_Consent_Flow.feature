Feature: On calling POST Consent Flow API, Verify that on sending consent request with
  Client API of alternate FIU, error response is received.

  Scenario: 1045_1 On calling POST Consent Flow API,Use the pre-linked user details
  from settings and send one valid consent post request with client_api_key of alternate FIU
  and Verify that the error response is received.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the reponse code 400 is received
    And   Verify that the version is supported version
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest/SignatureDoesNotMatch
    And   Verify that the txnid id is same as the txnid from request
