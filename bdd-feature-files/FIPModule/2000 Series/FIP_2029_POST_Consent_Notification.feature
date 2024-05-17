Feature: On Calling POST Consent Notification request as alternate AA with selected
  details of regular AA, error response is received.

  Scenario: 2029_1 Use the pre-linked user details from settings, set Consent/notification
  response in mock servers, send a valid consent request as regular AA and alternate AA and
  send a consent notification request with the following variations,Send the consent
  notification request as alternate AA with valid consent details of regular AA and Verify
  that HTTP 400 is displayed in response.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the version is supported version
    And   Error code should be InvalidRequest
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2029_2 Use the pre-linked user details from settings, set Consent/notification
  response in mock servers, send a valid consent request as regular AA and alternate AA and
  send a consent notification request with the following variations,Use alternative AA
  consent details and Change the Notifier.id to regular AA id and send consent notification
  request as alternate AA and Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the version is supported version
    And   Error code should be InvalidNotifier
    And   Verify that the txnid id is same as the txnid from request
