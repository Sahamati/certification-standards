Feature: On calling POST FI Notification API, Verify that on sending a valid FI notification
  request with invalid FIP API key, error response is received.

  Scenario: 3035_1 On calling POST FI Notification API, Use the pre-generated consent details
  from settings, set a valid FI response in mock FIP, send a valid FI request to AA, set FI notification in FIU mock server and finally send a FI
  notification request with following variations on the FIP key header, Send request as regular
  FIU without the FIP key header and Verify that the error response is received.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 401

  Scenario: 3035_2 On calling POST FI Notification API, Use the pre-generated consent details
  from settings, set a valid FI response in mock FIP, send a valid FI request to AA, set FI notification in FIU mock server and finally send a FI
  notification request with following variations on the FIP key header, Send request as regular
  FIU with FIP key as empty string and Verify that the error response is received.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 401

  Scenario: 3035_3 On calling POST FI Notification API, Use the pre-generated consent details
  from settings, set a valid FI response in mock FIP, send a valid FI request to AA, set FI notification in FIU mock server and finally send a FI
  notification request with following variations on the FIP key header, Send request as regular
  FIU with FIP key as 0 and Verify that the error response is received.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 401

  Scenario: 3035_4 On calling POST FI Notification API, Use the pre-generated consent details
  from settings, set a valid FI response in mock FIP, send a valid FI request to AA, set FI notification in FIU mock server and finally send a FI
  notification request with following variations on the FIP key header, Send the request as
  regular FIP with one char removed for that component and Verify that the error response is received.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 401

  Scenario: 3035_5 On calling POST FI Notification API, Use the pre-generated consent details
  from settings, set a valid FI response in mock FIP, send a valid FI request to AA, set FI
  fetch response in Mock FIP, set FI notification in FIU mock server and finally send a FI
  notification request with following variations on the FIP key header, Send the request as
  regular FIP with one char add for that component and Verify that the error response is received.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 401
