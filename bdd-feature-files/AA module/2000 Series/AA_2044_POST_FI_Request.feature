Feature: On calling POST FI Request API, Verify that on sending FI request with invalid
  Client API key, error response is received.

  Scenario: 2044_1 On calling POST FI Request API,Use the pre-generated consent details from
  settings, set a valid fi response in mock fip and send a valid FI request with following
  variations on the client api key header and Send request as regular FIU without the
  client_api_key header and Verify that the HTTP status code 401 is received.
    Given Calling the "POST /FI/request" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 401

  Scenario: 2044_2 On calling POST FI Request API,Use the pre-generated consent details from
  settings, set a valid fi response in mock fip and send a valid FI request with following
  variations on the client api key header and Send request as regular FIU with client_api_key
  as empty string and Verify that the HTTP status code 401 is received.
    Given Calling the "POST /FI/request" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 401

  Scenario: 2044_3 On calling POST FI Request API,Use the pre-generated consent details from
  settings, set a valid fi response in mock fip and send a valid FI request with following
  variations on the client api key header and Send request as regular FIU with client_api_key as 0
  and Verify that the HTTP status code 401 is received.
    Given Calling the "POST /FI/request" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 401

  Scenario: 2044_4 On calling POST FI Request API,Use the pre-generated consent details from
  settings, set a valid fi response in mock fip and send a valid FI request with following
  variations on the client api key header and Send the request as regular FIU with one char
  removed for that component and Verify that the HTTP status code 401 is received.
    Given Calling the "POST /FI/request" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 401

  Scenario: 2044_5 On calling POST FI Request API,Use the pre-generated consent details from
  settings, set a valid fi response in mock fip and send a valid FI request with following
  variations on the client api key header and Send the request as regular FIU with one char
  add for that component and Verify that the HTTP status code 401 is received.
    Given Calling the "POST /FI/request" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 401
