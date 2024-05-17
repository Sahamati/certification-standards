Feature: Send two FI request for consents of different fetchTypes and check if the second request
  is failing with HTTP status 400 (Bad request ).

  Scenario: 3013_1 Use the pre-linked user details from settings and try the following with consent request
  of each fetchType.(for fetchType as periodic repeat all the steps for each valid unit of frequecy with
  value as 1)
  1. Set Consent/notification response in mock server,
  2. Post consent request.
  3. Send the FI request.
  4. Wait for FI ready notification
  5. Send FI fetch request .
  6. Finally send FI request again.
  Send POST Account FIRequest twice for valid consentId generated with fetchType ONETIME and frequency unit
  HOUR. Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /FI/Request" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidConsentUse
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 3013_2 Use the pre-linked user details from settings and try the following with consent request
  of each fetchType.(for fetchType as periodic repeat all the steps for each valid unit of frequecy with
  value as 1)
  1. Set Consent/notification response in mock server,
  2. Post consent request.
  3. Send the FI request.
  4. Wait for FI ready notification
  5. Send FI fetch request .
  6. Finally send FI request again.
  Send POST Account FIRequest twice for valid consentId generated with fetchType PERIODIC and frequency unit
  HOUR. Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /FI/Request" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidConsentUse
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 3013_3 Use the pre-linked user details from settings and try the following with consent request
  of each fetchType.(for fetchType as periodic repeat all the steps for each valid unit of frequecy with
  value as 1)
  1. Set Consent/notification response in mock server,
  2. Post consent request.
  3. Send the FI request.
  4. Wait for FI ready notification
  5. Send FI fetch request .
  6. Finally send FI request again.
  Send POST Account FIRequest twice for valid consentId generated with fetchType PERIODIC and frequency unit
  DAY. Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /FI/Request" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidConsentUse
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 3013_4 Use the pre-linked user details from settings and try the following with consent request
  of each fetchType.(for fetchType as periodic repeat all the steps for each valid unit of frequecy with
  value as 1)
  1. Set Consent/notification response in mock server,
  2. Post consent request.
  3. Send the FI request.
  4. Wait for FI ready notification
  5. Send FI fetch request .
  6. Finally send FI request again.
  Send POST Account FIRequest twice for valid consentId generated with fetchType PERIODIC and frequency unit
  MONTH. Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /FI/Request" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidConsentUse
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 3013_5 Use the pre-linked user details from settings and try the following with consent request
  of each fetchType.(for fetchType as periodic repeat all the steps for each valid unit of frequecy with
  value as 1)
  1. Set Consent/notification response in mock server,
  2. Post consent request.
  3. Send the FI request.
  4. Wait for FI ready notification
  5. Send FI fetch request .
  6. Finally send FI request again.
  Send POST Account FIRequest twice for valid consentId generated with fetchType PERIODIC and frequency unit
  YEAR. Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /FI/Request" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidConsentUse
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
