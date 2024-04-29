Feature: On Calling POST FI Request for a delinked account and check if it is responding with
  HTTP status code 400 (Bad request).

  Scenario: 3018_1 Pick a single user account with first supported FIType, send account link request, send
  account verify link request, set Consent/notification response in mock server, send consent post request,
  delink the account and then send one valid FI request. Send POST FIRequest for a delinked account. Verify
  that HTTP 400 is displayed in response.
    Given Calling the "POST /FI/Request" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
