Feature: On calling POST Consent Notification API, verify that on responding with + or - 15 min variation
  in timestamp for consent POST request, error response is received for consent notification request.

  Scenario: 1020_1 Set the post consent request response with future timestamp(current time + 15 minutes).
  Set the consent handle response in mock server. Ask user to generate consent request from FIU for
  Mock AA. Check that the consent request is received at Mock server. Send the consent or notification
  request to FIU with valid values. Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1020_2 Set the post consent request response with expired timestamp(current time - 15 minutes).
  Set the consent handle response in mock server. Ask user to generate consent request from FIU for
  Mock AA. Check that the consent request is received at Mock server. Send the consent or notification
  request to FIU with valid values. Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
