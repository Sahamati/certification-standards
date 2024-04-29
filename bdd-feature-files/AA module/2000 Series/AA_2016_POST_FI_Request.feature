Feature: On calling POST FI Request API, Verify that on sending FI request twice for
  consent with fetchType as ONETIME,the error response is received for second request.

  Scenario: 2016_1 On calling the POST FI Request API, Use the pre-linked user details
  from settings, send a valid consent request with fetchType as ONETime, ask the user to
  approve the consent & confirm, send a valid consent handle to receive APPROVED status,
  send a consent fetch request. Set a valid FI and FI/fetch response in mock FIP and then
  send FI request, check if FI/request is received in mock FIP, Send FI/notification with
  Status 'READY'. Wait for FI/Notification received at FIU with READY status. Send FI/Fetch
  request and Finally Send FI request again and Verify that the HTTP status code 400 is received.
    Given Calling the "POST /FI/request" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidConsentUse
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
