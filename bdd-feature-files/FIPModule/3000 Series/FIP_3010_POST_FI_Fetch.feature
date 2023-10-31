Feature: On Calling FI Fetch request with invalid session id and check if it is responding with
  HTTP status code 400 (Bad request).

  Scenario: 3010_1 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send one valid consent post request.Set Fi/Notification response on mock server. Send the FI
  request, wait for FI ready notification then try the following for FI/fetch/{id} request. Send FI Fetch
  request with random session id and Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the Error code is InvalidSessionId
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from the current time stamp
    And   Verify that the version is supported version

  Scenario: 3010_2 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send one valid consent post request.Set Fi/Notification response on mock server. Send the FI
  request, wait for FI ready notification then try the following for FI/fetch/{id} request. Send FI Fetch
  request by adding extra character in valid session id and Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the Error code is InvalidSessionId
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from the current time stamp
    And   Verify that the version is supported version

  Scenario: 3010_3 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send one valid consent post request.Set Fi/Notification response on mock server. Send the FI
  request, wait for FI ready notification then try the following for FI/fetch/{id} request. Send FI Fetch
  request removing last character from valid session id and Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the Error code is InvalidSessionId
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from the current time stamp
    And   Verify that the version is supported version
