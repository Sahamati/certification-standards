Feature: On Calling FI fetch request with basic invalid values for each required field and check if it
  is responding with HTTP status code 400 (Bad request).

  Scenario: 3029_1 "Use the pre-linked user details from settings, set Consent/notification
  response in mock server, send one valid consent post request.Set Fi/Notification
  response in mock server. send the FI request, wait to receive the FI ready notification
  and then try the following for FI Fetch request,Send POST FI fetch request with null
  values set in required field and Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from the current time stamp
    And   Error code should be following according to the field
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version

  Scenario: 3029_2 "Use the pre-linked user details from settings, set Consent/notification
  response in mock server, send one valid consent post request.Set Fi/Notification
  response in mock server. send the FI request, wait to receive the FI ready notification
  and then try the following,Send POST FI fetch Request with Empty String values set
  in required field and Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from the current time stamp
    And   Error code should be following according to the field
    And   Verify that the Error code is InvalidRequest
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
