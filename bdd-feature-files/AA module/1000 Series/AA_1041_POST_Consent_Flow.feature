Feature: On calling POST Consent Flow API,  Verify that on sending consent request with
  invalid JWS API signature, the error response is received.

  Scenario: 1041_1 On calling the POST Accounts Consent Flow API, use the pre-linked user
  details from settings, send one valid consent post request on the x-jws-signature header
  using the valid JWS signature with one character added at the end and Verify that the
  error response is received.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is SignatureDoesNotMatch/InvalidRequest
    And   Verify that the version is supported version

  Scenario: 1041_2 On calling POST Consent Flow API, use the pre-linked user details from
  settings,send one valid consent post request on the x-jws-signature header using the valid
  JWS signature with one character removed at the end and  Verify that the error response is
  received.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is SignatureDoesNotMatch/InvalidRequest
    And   Verify that the version is supported version

  Scenario: 1041_3 On calling POST Consent Flow API, use the pre-linked user details from
  settings,send one valid consent post request on the x-jws-signature header by generating
  the JWS signature using a different key that is not used for anything else and Verify that
  the error response is received.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is SignatureDoesNotMatch/InvalidRequest
    And   Verify that the version is supported version

  Scenario: 1041_4 On calling POST Consent Flow API, use the pre-linked user details from
  settings,send one valid consent post request on the x-jws-signature header using the valid
  JWS signature with a small change in the request body data and Verify that the error response
  is received.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is received
    And   Verify that the timestamp has the exact format i.e  the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is SignatureDoesNotMatch/InvalidRequest
    And   Verify that the version is supported version
