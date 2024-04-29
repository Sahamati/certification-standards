Feature: On Calling POST Consent Notification request with invalid ConsentStatusNotification and
  check if it is responding with HTTP status code 400 (Bad request).

  Scenario: 2024_1 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, post a valid consent and try the following. Send POST Consent Notification request with a invalid
  consentId (random UUID). Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2024_2 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, post a valid consent and try the following. Send POST Consent Notification request with
  consentStatus as REVOKED, response should be success then try consentStatus as ACTIVE and PAUSED. Verify
  that HTTP 400 is displayed in response.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2024_3 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, post a valid consent and try the following. Send POST Consent Notification request with a valid
  consentId generate by different aa for consentStatus PAUSED. Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2024_4 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, post a valid consent and try the following. Send POST Consent Notification request with a valid
  consentId generate by different aa for consentStatus ACTIVE. Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2024_5 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, post a valid consent and try the following. Send POST Consent Notification request with a valid
  consentId generate by different aa for consentStatus REVOKED. Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2024_6 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, post a valid consent and try the following. Send POST Consent Notification request with a valid
  consentId generate by different aa for consentStatus EXPIRED. Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
