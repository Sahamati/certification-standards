Feature: On Calling FI fetch request with invalid sessionId, error response is received

  Scenario: 3029_1 "Use the pre-linked user details from settings, set Consent/notification
  response in mock server, send one valid consent post request.Set Fi/Notification response
  in mock server. send the FI request, wait to receive the FI ready notification and then
  try the following for FI Fetch request with empty session id and verify status code should be 400.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from the current time stamp
    And   Error code should be following according to the field
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version

  Scenario: 3029_1 "Use the pre-linked user details from settings, set Consent/notification
  response in mock server, send one valid consent post request.Set Fi/Notification response
  in mock server. send the FI request, wait to receive the FI ready notification and then
  try the following for FI Fetch request with random session id and verify status code should be 400.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from the current time stamp
    And   Error code should be following according to the field
    And   Verify that the Error code is InvalidSessionId
    And   Verify that the version is supported version

  Scenario: 3029_1 "Use the pre-linked user details from settings, set Consent/notification
  response in mock server, send one valid consent post request.Set Fi/Notification response
  in mock server. send the FI request, wait to receive the FI ready notification and then
  try the following for FI Fetch request with valid session id but add a extra char at the end
  and verify status code should be 400.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from the current time stamp
    And   Error code should be following according to the field
    And   Verify that the Error code is InvalidSessionId
    And   Verify that the version is supported version

  Scenario: 3029_1 "Use the pre-linked user details from settings, set Consent/notification
  response in mock server, send one valid consent post request.Set Fi/Notification response
  in mock server. send the FI request, wait to receive the FI ready notification and then
  try the following for FI Fetch request with valid session id but remove last char and verify status code should be 400.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from the current time stamp
    And   Error code should be following according to the field
    And   Verify that the Error code is InvalidSessionId
    And   Verify that the version is supported version
