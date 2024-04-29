Feature: On calling POST FI Request API, verify that on sending FI request with invalid
  KeyMaterials object,the error response is received.

  Scenario: 2011_1 On calling the POST FI Request API, use the pre-generated consent details from settings. On
  KeyMaterials object, get the list of non supported standard crypto algorithms from settings and use each of them in
  cryptoAlg field and Verify that the HTTP status code 400 is received.
    Given Calling the "POST /FI/request" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidKey
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2011_2 On calling the POST FI Request API, use the pre-generated consent details
  from settings. On KeyMaterials object, get the list of non supported standard curves from
  settings and use each of them in curve field. Verify that the HTTP status code 400 is received.
    Given Calling the "POST /FI/request" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2011_3 On calling the POST FI Request API, use the pre-generated consent details
  from settings. On KeyMaterials object, use a expired DHPublicKey and Verify that the HTTP
  status code 400 is received.
    Given Calling the "POST /FI/request" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidKey
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
