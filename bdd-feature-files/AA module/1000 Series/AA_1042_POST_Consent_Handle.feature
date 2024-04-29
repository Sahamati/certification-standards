Feature: On calling POST Consent Handle request API, verify that on sending consent
  handle request with invalid JWS API signature, the error response is received.

  Scenario: 1042_1 On calling POST Consent Handle request API, use the pre-linked user details
  from settings,send a valid consent request and send the consent handle request on the
  x-jws-signature header using the valid JWS signature with one character added at the end
  and Verify that the error response is received.
    Given Calling the "POST /Consent/handle" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is SignatureDoesNotMatch/InvalidRequest
    And   Verify that the version is supported version

  Scenario: 1042_2 On calling POST Consent Handle request API, use the pre-linked user details
  from settings,send a valid consent request and send the consent handle request on the
  x-jws-signature header using the valid JWS signature with one character removed at the end
  and Verify that the error response is received.
    Given Calling the "POST /Consent/handle" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is SignatureDoesNotMatch/InvalidRequest
    And   Verify that the version is supported version

  Scenario: 1042_3 On calling POST Consent Handle request API, use the pre-linked user details
  from settings,send a valid consent request and send the consent handle request on the
  x-jws-signature header by generating the JWS signature using a different key that is not
  used anything else and Verify that the error response is received.
    Given Calling the "POST /Consent/handle" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is SignatureDoesNotMatch/InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1042_4 On calling POST Consent Handle request API, use the pre-linked user
  details from settings,send a valid consent request and send the consent handle request
  on the x-jws-signature header using the valid JWS signature with a small change done in
  the request body data and Verify that the error response is received.
    Given Calling the "POST /Consent/handle" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is SignatureDoesNotMatch/InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
