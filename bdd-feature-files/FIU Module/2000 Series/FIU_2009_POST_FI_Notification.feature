Feature: On calling POST FI notification request API, verify that on sending FI Notification as Alternate AA with FI
  details of regular AA, the error response is received.

  Scenario: 2009_1 Set the Consent post request response and the consent handle request response with 'PENDING'
  status on Mock server. Ask the user to raise the consent request on MOCK AA and check that the consent
  request is received at Alternate mock server. Set the consent get response  on Alternate  Mock server.
  Send the consent notification request with status as ACTIVE. Check that the consent get is received at
  Alternate Mock server. Set the FI request response on Alternate  mock server. Ask the user to send the FI
  request for Alternate Mock AA. Check that the FI request is received at Alternate  Mock AA. Ask user to send
  valid FI request to Mock AA for pre generated consent. Check that the FI request is received at Mock AA and
  finally send the FI notification as alternate AA with regular AA id in Notifier id. Verify that the error response
  is displayed.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2009_2 Set the Consent post request response and the consent handle request response with 'PENDING'
  status on Mock server. Ask the user to raise the consent request on MOCK AA and check that the consent
  request is received at Alternate mock server. Set the consent get response  on Alternate  Mock server.
  Send the consent notification request with status as ACTIVE. Check that the consent get is received at
  Alternate Mock server. Set the FI request response on Alternate  mock server. Ask the user to send the FI
  request for Alternate Mock AA. Check that the FI request is received at Alternate  Mock AA. Ask user to send
  valid FI request to Mock AA for pre generated consent. Check that the FI request is received at Mock AA and
  finally send the FI notification as alternate AA with session id generated for regular AA. Verify that the
  error response is displayed.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is  InvalidSessionId
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2009_3 Set the Consent post request response and the consent handle request response with 'PENDING'
  status on Mock server. Ask the user to raise the consent request on MOCK AA and check that the consent
  request is received at Alternate mock server. Set the consent get response  on Alternate  Mock server.
  Send the consent notification request with status as ACTIVE. Check that the consent get is received at
  Alternate Mock server. Set the FI request response on Alternate  mock server. Ask the user to send the FI
  request for Alternate Mock AA. Check that the FI request is received at Alternate  Mock AA. Ask user to send
  valid FI request to Mock AA for pre generated consent. Check that the FI request is received at Mock AA and
  finally send the FI notification as alternate AA with Accounts detail from regular AA. Verify that the error response
  is displayed.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
