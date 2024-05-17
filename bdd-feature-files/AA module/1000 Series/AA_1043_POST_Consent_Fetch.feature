Feature: On calling POST Consent Fetch Flow API, verify that on sending consent fetch
  request with invalid JWS API signature, error response is received.

  Scenario: 1043_1 On calling POST Consent Fetch Flow API,Use the pre-linked user details
  from settings, set Post consent response in FIP mock server, send a valid consent request,
  ask the user to approve the consent & confirm, send a valid consent handle request to
  receive APPROVED status and finally send the consent fetch request with following variations
  on the x-jws-signature header,use the valid JWS signature but add one char to the end
  and Verify that the error response is received.
    Given Calling the "POST /Consent/fetch" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is SignatureDoesNotMatch/InvalidRequest
    And   Verify that the version is supported version

  Scenario: 1043_2 On calling POST Consent Fetch Flow API,Use the pre-linked user details
  from settings, set Post consent response in FIP mock server, send a valid consent request,
  ask the user to approve the consent & confirm, send a valid consent handle request to
  receive APPROVED status and finally send the consent fetch request with following variations
  on the x-jws-signature header,Use the valid JWS signature but remove the last char and
  Verify that the error response is received.
    Given Calling the "POST /Consent/fetch" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is SignatureDoesNotMatch/InvalidRequest
    And   Verify that the version is supported version

  Scenario: 1043_3 On calling POST Consent Fetch Flow API,Use the pre-linked user details
  from settings, set Post consent response in FIP mock server, send a valid consent request,
  ask the user to approve the consent & confirm, send a valid consent handle request to
  receive APPROVED status and finally send the consent fetch request with following variations
  on the x-jws-signature header,Generate the JWS signature using a different key that is not
  used for anything else and Verify that the error response is received.
    Given Calling the "POST /Consent/fetch" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is SignatureDoesNotMatch/InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1043_4 On calling POST Consent Fetch Flow API,Use the pre-linked user details
  from settings, set Post consent response in FIP mock server, send a valid consent request,
  ask the user to approve the consent & confirm, send a valid consent handle request to
  receive APPROVED status and finally send the consent fetch request with following variations
  on the x-jws-signature header,Use the valid JWS signature, but do a small change in the
  request body data and Verify that the error response is received.
    Given Calling the "POST /Consent/fetch" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is SignatureDoesNotMatch/InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
