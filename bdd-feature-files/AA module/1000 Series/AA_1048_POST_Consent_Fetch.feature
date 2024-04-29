Feature: On calling POST Consent Fetch Flow API, Verify that on sending invalid
  Client API key in consent fetch request, consent with error response is received.

  Scenario: 1048_1 On calling POST Consent Fetch Flow API,Use the pre-linked user details
  from settings,set the Post consent response on mock server, send a valid consent request,
  ask the user to approve the consent & confirm, send a valid consent handle to receive APPROVED
  status, set consent/notification response on FIP and FIU mock server, ask the user to approve
  consent & confirm and then send a consent fetch request with following variations on the
  client api key header,send request as regular FIU without the client_api_key header and
  Verify that the error response is received.
    Given Calling the "POST /Consent/fetch" Flow API
    When  POST action is performed
    Then  Verify that the reponse code 401 is received
    And   Verify that the version is supported version

  Scenario: 1048_2 On calling POST Consent Fetch Flow API,Use the pre-linked user details
  from settings,set the Post consent response on mock server, send a valid consent request,
  ask the user to approve the consent & confirm, send a valid consent handle to receive APPROVED
  status, set consent/notification response on FIP and FIU mock server, ask the user to approve
  consent & confirm and then send a consent fetch request with following variations on the
  client api key header,Send request as regular FIU with client_api_key as empty string and
  Verify that the error response is received.
    Given Calling the "POST /Consent/fetch" Flow API
    When  POST action is performed
    Then  Verify that the reponse code 401 is received
    And   Verify that the version is supported version

  Scenario: 1048_3 On calling POST Consent Fetch Flow API,Use the pre-linked user details
  from settings,set the Post consent response on mock server, send a valid consent request,
  ask the user to approve the consent & confirm, send a valid consent handle to receive APPROVED
  status, set consent/notification response on FIP and FIU mock server, ask the user to approve
  consent & confirm and then send a consent fetch request with following variations on the
  client api key header,Send request as regular FIU with client_api_key as 0 and
  Verify that the error response is received.
    Given Calling the "POST /Consent/fetch" Flow API
    When  POST action is performed
    Then  Verify that the reponse code 401 is received
    And   Verify that the version is supported version

  Scenario: 1048_4 On calling POST Consent Fetch Flow API,Use the pre-linked user details
  from settings,set the Post consent response on mock server, send a valid consent request,
  ask the user to approve the consent & confirm, send a valid consent handle to receive APPROVED
  status, set consent/notification response on FIP and FIU mock server, ask the user to approve
  consent & confirm and then send a consent fetch request with following variations on the
  client api key header,Send the request as regular FIU with one char removed for that component
  and Verify that the error response is received.
    Given Calling the "POST /Consent/fetch" Flow API
    When  POST action is performed
    Then  Verify that the reponse code 401 is received
    And   Verify that the version is supported version

  Scenario: 1048_5 On calling POST Consent Fetch Flow API,Use the pre-linked user details
  from settings,set the Post consent response on mock server, send a valid consent request,
  ask the user to approve the consent & confirm, send a valid consent handle to receive APPROVED
  status, set consent/notification response on FIP and FIU mock server, ask the user to approve
  consent & confirm and then send a consent fetch request with following variations on the
  client api key header,Send the request as regular FIU with one char add for that component and
  Verify that the error response is received.
    Given Calling the "POST /Consent/fetch" Flow API
    When  POST action is performed
    Then  Verify that the reponse code 401 is received
    And   Verify that the version is supported version
