Feature: On Calling POST FI Request with basic invalid values for each required field
  and check if it is responding with HTTP status code 400 (Bad request).

  Scenario: 3002_1 Use the pre-linked user details from settings,set Consent/notification response in mock
  server, send one valid consent post request and then try the following. Send POST FIRequest with null
  values set in required field and Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /FI/Request" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version

  Scenario: 3002_2 Use the pre-linked user details from settings,set Consent/notification response in mock
  server, send one valid consent post request and then try the following. Send POST FIRequest with Empty
  String values set in required field and Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /FI/Request" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version

  Scenario: 3002_3 Use the pre-linked user details from settings,set Consent/notification response in mock
  server, send one valid consent post request and then try the following. Send POST FIRequest with each
  time one enum field set to non enum value. Add an extra character at the end of last enum
  and remove the last character at the end of first enum and Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /FI/Request" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
