Feature: On calling POST FI Request API, verify whether FI request fails if frequency
  of FI request is not according to consent approved frequency.

  Scenario: 2015_1 On calling POST FI Request API, Use the pre-linked user details from
  settings and try the following for each valid Frequency unit with value as 1 and Send a valid
  consent request, ask the user to approve the consent & confirm, send a valid consent handle
  to receive APPROVED status, send a consent fetch request with unit HOUR,set a valid FI and
  FI/fetch response in mock FIP and then send FI request, check if FI/request is received in
  mock FIP,Send FI/notification with Status 'READY'. Wait for FI/Notification received at
  FIU with READY status. Send FI/Fetch request and Finally Send FI request again and Verify
  that the HTTP status code 400 is received for second FI request.
    Given Calling the "POST /FI/request" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 200 for first FI request & 400 for second FI request
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidConsentUse
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2015_2 On calling POST FI Request API, Use the pre-linked user details from
  settings and try the following for each valid Frequency unit with value as 1 and Send a valid
  consent request, ask the user to approve the consent & confirm, send a valid consent handle
  to receive APPROVED status, send a consent fetch request with unit DAY,set a valid FI and
  FI/fetch response in mock FIP and then send FI request, check if FI/request is received in
  mock FIP,Send FI/notification with Status 'READY'. Wait for FI/Notification received at
  FIU with READY status. Send FI/Fetch request and Finally Send FI request again and Verify
  that the HTTP status code 400 is received for second FI request.
    Given Calling the "POST /FI/request" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 200 for first FI request & 400 for second FI request
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidConsentUse
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2015_3 On calling POST FI Request API, Use the pre-linked user details from
  settings and try the following for each valid Frequency unit with value as 1 and Send a valid
  consent request, ask the user to approve the consent & confirm, send a valid consent handle
  to receive APPROVED status, send a consent fetch request with unit MONTH,set a valid FI and
  FI/fetch response in mock FIP and then send FI request, check if FI/request is received in
  mock FIP,Send FI/notification with Status 'READY'. Wait for FI/Notification received at
  FIU with READY status. Send FI/Fetch request and Finally Send FI request again and Verify
  that the HTTP status code 400 is received for second FI request.
    Given Calling the "POST /FI/request" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 200 for first FI request & 400 for second FI request
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidConsentUse
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2015_4 On calling POST FI Request API, Use the pre-linked user details from
  settings and try the following for each valid Frequency unit with value as 1 and Send a valid
  consent request, ask the user to approve the consent & confirm, send a valid consent handle
  to receive APPROVED status, send a consent fetch request with unit YEAR,set a valid FI and
  FI/fetch response in mock FIP and then send FI request, check if FI/request is received in
  mock FIP,Send FI/notification with Status 'READY'. Wait for FI/Notification received at
  FIU with READY status. Send FI/Fetch request and Finally Send FI request again and Verify
  that the HTTP status code 400 is received for second FI request.
    Given Calling the "POST /FI/request" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 200 for first FI request & 400 for second FI request
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidConsentUse
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
