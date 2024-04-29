Feature: On calling POST Consent Notification API, verify that on responding with invalid version
  for consent POST request, error response is received for consent notification request.

  Scenario: 1019_1 Set the post consent request response with incorrect version number from settings.
  Set the consent handle response in mock server. Ask the user to generate consent request from FIU for
  Mock AA. Check that the consent request is received at Mock server. Send the consent or notification
  request to FIU with valid values. Verify that 400 error response is received.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1019_2 Set the post consent request response with an extra digit at the end of the version
  number. Set the consent handle response in mock server. Ask the user to generate consent request from FIU for
  Mock AA. Check that the consent request is received at Mock server. Send the consent or notification
  request to FIU with valid values. Verify that 400 error response is received.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1019_3 Set the post consent request response by removing the last character or digit at the
  end of correct version number. Set the consent handle response in mock server. Ask the user to
  generate consent request from FIU for Mock AA. Check that the consent request is received at Mock server.
  Send the consent or notification request to FIU with valid values. Verify that 400 error response is received.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
