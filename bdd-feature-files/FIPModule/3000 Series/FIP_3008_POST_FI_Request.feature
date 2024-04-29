Feature: On Calling POST FI Request with invalid KeyMaterials object and check if it is responding
  with HTTP status code 400 (Bad request).

  Scenario: 3008_1 Use the pre-linked user details from settings,set Consent/notification response in mock
  server, send one valid consent post request and then try the following. Send POST Account FIRequest with
  un-supported crypto algorithm RSA in KeyMaterials objects cryptoAlg field of request body. Verify that
  HTTP 400 is displayed in response.
    Given Calling the "POST /FI/Request" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidKey
    And   Verify that the version is supported version

  Scenario: 3008_2 Use the pre-linked user details from settings,set Consent/notification response in mock
  server, send one valid consent post request and then try the following. Send POST Account FIRequest with
  un-supported crypto algorithm DH in KeyMaterials objects cryptoAlg field of request body. Verify that
  HTTP 400 is displayed in response.
    Given Calling the "POST /FI/Request" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidKey
    And   Verify that the version is supported version

  Scenario: 3008_3 Use the pre-linked user details from settings,set Consent/notification response in mock
  server, send one valid consent post request and then try the following. Send POST Account FIRequest with
  un-supported curve ECC in KeyMaterials objects cryptoAlg field of request body. Verify that HTTP 400
  is displayed in response.
    Given Calling the "POST /FI/Request" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidKey
    And   Verify that the version is supported version

  Scenario: 3008_4 Use the pre-linked user details from settings,set Consent/notification response in mock
  server, send one valid consent post request and then try the following. Send POST Account FIRequest with
  un-supported curve FourQ in KeyMaterials objects cryptoAlg field of request body. Verify that HTTP 400
  is displayed in response.
    Given Calling the "POST /FI/Request" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidKey
    And   Verify that the version is supported version

  Scenario: 3008_5 Use the pre-linked user details from settings,set Consent/notification response in mock
  server, send one valid consent post request and then try the following. Send POST Account FIRequest with
  un-supported curve ECMQV in KeyMaterials objects cryptoAlg field of request body. Verify that HTTP 400
  is displayed in response.
    Given Calling the "POST /FI/Request" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidKey
    And   Verify that the version is supported version

  Scenario: 3008_6 Use the pre-linked user details from settings,set Consent/notification response in mock
  server, send one valid consent post request and then try the following. Send POST Account FIRequest with
  expired DHPublicKey(Current_time - 2 days) in KeyMaterials objects DHPublicKey field of request body.
  Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /FI/Request" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidKey
    And   Verify that the version is supported version
