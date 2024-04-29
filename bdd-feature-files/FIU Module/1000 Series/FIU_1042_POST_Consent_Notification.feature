Feature: On calling POST Consent Notification API, verify that on sending consent Notification request with invalid
  API key, error response is received

  Scenario: 1042_1 Set the post consent request response on Mock server, ask the user to send consent request for
  Mock AA, Check that the post Consent request received at Mock server. Send the consent or notification with
  status as ACTIVE by sending the request as regular AA without the aa_api_key header. Verify that the error
  response code HTTP 401 is received.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the error response code HTTP 401 is received

  Scenario: 1042_2 Set the post consent request response on Mock server, ask the user to send consent request for
  Mock AA, Check that the post Consent request received at Mock server. Send the consent or notification with
  status as ACTIVE by sending the request as regular AA with aa_api_key as empty string. Verify that the error
  response code HTTP 401 is received.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the error response code HTTP 401 is received

  Scenario: 1042_3 Set the post consent request response on Mock server, ask the user to send consent request for
  Mock AA, Check that the post Consent request received at Mock server. Send the consent or notification with
  status as ACTIVE by sending the request as regular AA with aa_api_key as 0(zero). Verify that the error
  response code HTTP 401 is received.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the error response code HTTP 401 is received

  Scenario: 1042_4.1 Set the post consent request response on Mock server, ask the user to send consent request for
  Mock AA, Check that the post Consent request received at Mock server. Send the consent or notification with
  status as ACTIVE. Split the api key with .(dot) and send the request as regular AA with one char removed for that
  component. Verify that the error response code HTTP 401 is received.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the error response code HTTP 401 is received

  Scenario: 1042_4.2 Set the post consent request response on Mock server, ask the user to send consent request for
  Mock AA, Check that the post Consent request received at Mock server. Send the consent or notification with
  status as ACTIVE. Split the api key with .(dot) and send the request as regular AA with one character added for
  that component. Verify that the error response code HTTP 401 is received.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the error response code HTTP 401 is received
