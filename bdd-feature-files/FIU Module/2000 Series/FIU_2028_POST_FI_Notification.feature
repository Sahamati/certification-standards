Feature: On calling POST FI notification request API, verify that on sending FI Notification request with
  invalid API key, the error response is received.

  Scenario: 2028_1 Set the Post FI request response on Mock server. Ask the user to do POST FI request for
  pre generated consent to mock AA. Check the the FI request is received at Mock AA. Set FI Fetch response
  on Mock server. Send the FI notification with status as ACTIVE and send the request as regular AA without
  the aa_api_key header. Verify that the error response HTTP 401 is received.
    Given Calling the POST "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code 401 is displayed

  Scenario: 2028_2 Set the Post FI request response on Mock server. Ask the user to do POST FI request for
  pre generated consent to mock AA. Check the the FI request is received at Mock AA. Set FI Fetch response
  on Mock server. Send the FI notification with status as ACTIVE and send the request as regular AA with
  aa_api_key as empty string. Verify that the error response HTTP 401 is received.
    Given Calling the POST "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code 401 is displayed

  Scenario: 2028_3 Set the Post FI request response on Mock server. Ask the user to do POST FI request for
  pre generated consent to mock AA. Check the the FI request is received at Mock AA. Set FI Fetch response
  on Mock server. Send the FI notification with status as ACTIVE and send the request as regular AA with
  aa_api_key as 0. Verify that the error response HTTP 401 is received.
    Given Calling the POST "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code 401 is displayed

  Scenario: 2028_4 Set the Post FI request response on Mock server. Ask the user to do POST FI request for
  pre generated consent to mock AA. Check the the FI request is received at Mock AA. Set FI Fetch response
  on Mock server. Send the FI notification with status as ACTIVE and split the api key with .(dot) and send
  the request as regular AA with one character removed for that component on each split component. Verify that
  the error response HTTP 401 is received .
    Given Calling the POST "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code 401 is displayed

  Scenario: 2028_4.1 Set the Post FI request response on Mock server. Ask the user to do POST FI request for
  pre generated consent to mock AA. Check the the FI request is received at Mock AA. Set FI Fetch response
  on Mock server. Send the FI notification with status as ACTIVE and split the api key with .(dot) and send
  the request as regular AA with one character added for that component on each split component. Verify
  that the error response HTTP 401 is received.
    Given Calling the POST "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code 401 is displayed
