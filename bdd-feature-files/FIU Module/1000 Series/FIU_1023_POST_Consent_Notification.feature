Feature: On calling POST Consent Notification API, verify that on responding with invalid JWS signature for
  consent POST request, error response is received for consent notification request.

  Scenario: 1023_1 Set the post consent request response with invalid JWS signature in mock server.
  Ask the user to raise consent request for mock server. Check that the POST consent request is received
  at Mock server. Set the consent or id response in mock server and Finally send consent notification
  request. Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
