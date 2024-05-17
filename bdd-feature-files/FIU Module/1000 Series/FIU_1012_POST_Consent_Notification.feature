Feature: On calling POST Consent Notification API, Verify on providing invalid response to Consent Handle request
  error response is received for Consent Notification request.

  Scenario: 1012_1 Generate the consent handle response with null value set in required field.
  Set the post Consent request response and set the consent handle response with consent
  Status as 'PENDING' on Mock AA. Ask the user to raise a consent request for Mock AA.
  Check that if request is received at Mock AA. Check if consent Handle request received at AA and ask the
  FIU SPOC if consentHandle response is discarded. Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed

  Scenario: 1012_2 Generate the consent handle response with empty string set in required field.
  Set the post Consent request response and set the consent handle response with consent
  Status as 'PENDING' on Mock AA. Ask the user to raise a consent request for Mock AA.
  Check that if request is received at Mock AA. Check if consent Handle request received at AA and ask the
  FIU SPOC if consentHandle response is discarded. Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed

  Scenario: 1012_3 Generate the consent handle response with '0' (Zero ) set in required field.
  Set the post Consent request response and set the consent handle response with consent
  Status as 'PENDING' on Mock AA. Ask the user to raise a consent request for Mock AA.
  Check that if request is received at Mock AA. Check if consent Handle request received at AA and ask the
  FIU SPOC if consentHandle response is discarded. Verify that HTTP 400 is displayed in response.
    Given Calling the POST Consent Notification API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed

  Scenario: 1012_4 Generate the consent handle response with empty object set in object field.
  Set the post Consent request response and set the consent handle response with consent
  Status as 'PENDING' on Mock AA. Ask the user to raise a consent request for Mock AA.
  Check that if request is received at Mock AA. Check if consent Handle request received at AA and ask the
  FIU SPOC if consentHandle response is discarded. Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
