Feature: On calling POST FI Fetch request API, verify that on responding with invalid JWS signature for FI fetch
  request, the FI fetch failure is communicated to FIU SPOC.

  Scenario: 2026_1 Set Post FI request response on Mock server. Ask user to do POST FI request for pre
  generated consent to mock AA. Check that the FI request is received at Mock AA. Set the FI Fetch
  response on Mock with invalid JWS signature.Send the FI notification in READY status.
  Wait fo 2 seconds and check that the FI Fetch request is received at mock server. Ask the user the error
  message for data fetch is communicated. Verify that the FI fetch failure is communicated to FIU SPOC.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the FI fetch failure is communicated to FIU SPOC
