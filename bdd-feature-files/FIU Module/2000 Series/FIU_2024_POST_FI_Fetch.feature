Feature: On calling POST FI Fetch request API, Verify that on responding with invalid FI data object for FI
  fetch request, the FI fetch failure is communicated to FIU end user.

  Scenario: 2024_1 Set Post FI request response on Mock server. Ask user to do POST FI request for pre
  generated consent to mock AA. Check that the FI request is received at Mock AA. Set the FI Fetch
  response on Mock with the random linkRefNumber for FI Data object. Send the FI notification in READY status.
  Wait fo 2 seconds and check that the FI Fetch request is received at mock server. Ask the user the error
  message for data fetch is communicated. Verify that the FI fetch failure is communicated to FIU SPOC.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the FI fetch failure is communicated to FIU SPOC

  Scenario: 2024_2 Set Post FI request response on Mock server. Ask user to do POST FI request for pre
  generated consent to mock AA. Check that the FI request is received at Mock AA. Set the FI Fetch
  response on Mock with the random MaskedAccountNumber for FI Data object. Send the FI notification in READY status.
  Wait fo 2 seconds and check that the FI Fetch request is received at mock server. Ask the user the error
  message for data fetch is communicated. Verify that the FI fetch failure is communicated to FIU SPOC.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the FI fetch failure is communicated to FIU SPOC

  Scenario: 2024_3 Set Post FI request response on Mock server. Ask user to do POST FI request for pre
  generated consent to mock AA. Check that the FI request is received at Mock AA. Set the FI Fetch
  response on Mock by adding an extra character to Encrypted FI for FI Data object. Send the FI notification
  in READY status. Wait fo 2 seconds and check that the FI Fetch request is received at mock server. Ask the
  user the error message for data fetch is communicated. Verify that the FI fetch failure is communicated to
  FIU SPOC.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the FI fetch failure is communicated to FIU SPOC

  Scenario: 2024_4 Set Post FI request response on Mock server. Ask user to do POST FI request for pre
  generated consent to mock AA. Check that the FI request is received at Mock AA. Set the FI Fetch
  response on Mock by removing a single character at the beginning of encrypted FI. Send the FI notification
  in READY status. Wait fo 2 seconds and check that the FI Fetch request is received at mock server.
  Ask the user the error
  message for data fetch is communicated. Verify that the FI fetch failure is communicated to FIU SPOC.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the FI fetch failure is communicated to FIU SPOC

  Scenario: 2024_5 Set Post FI request response on Mock server. Ask user to do POST FI request for pre
  generated consent to mock AA. Check that the FI request is received at Mock AA. Set the FI Fetch
  response on Mock by removing a single character at the end of encrypted FI. Send the FI notification
  in READY status. Wait fo 2 seconds and check that the FI Fetch request is received at mock server.
  Ask the user the error
  message for data fetch is communicated. Verify that the FI fetch failure is communicated to FIU SPOC.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the FI fetch failure is communicated to FIU SPOC
