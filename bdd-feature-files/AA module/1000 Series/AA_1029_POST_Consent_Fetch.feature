Feature: On calling POST Consent Fetch Flow API, verify that on sending consent fetch
  request for a consent that is expired, the consent with expired status is received.

  Scenario: 1029_1 On calling POST Consent Fetch Flow API, Use the pre-linked user details
  from settings,set the Post consent response on mock server, send a valid consent request
  with consent valid for next 5 min,ask the user to approve the consent & confirm,send a
  valid consent handle to receive APPROVED status, wait till the consent expires and then
  send a consent fetch request and Verify that the consent with expired status is received
  then Verify success response is received.
    Given Calling the "POST /Consent/fetch" request API
    When  POST action is performed
    Then  Verify that the response code 200 is received
    And   Verify that the response status is 'EXPIRED'
