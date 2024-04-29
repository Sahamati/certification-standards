Feature: On calling POST Consent Handle request API, Verify that on sending
  a consent handle request with basic invalid values for each required field,
  error response is received.

  Scenario: 1050_1 On calling POST Consent Handle request API,Use the pre-linked user
  details from settings. Set Post consent response on Mock FIP. Send a valid consent
  request for linked Account. Send consent handle request with following variations,
  Each time one required field set to null and Verify that the error response is received.
    Given Calling the "POST /Consent/handle" Flow API
    When  POST action is performed
    Then  Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    Then  Verify that the reponse code 400 is received
    And   Verify that the error code is followed according to fields
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1050_2 On calling POST Consent Handle request API,Use the pre-linked user
  details from settings. Set Post consent response on Mock FIP. Send a valid consent
  request for linked Account. Send consent handle request with following variations,
  Each time one required field set to empty string and Verify that the error response is received.
    Given Calling the "POST /Consent/handle" Flow API
    When  POST action is performed
    Then  Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    Then  Verify that the reponse code 400 is received
    And   Verify that the error code is followed according to fields
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
