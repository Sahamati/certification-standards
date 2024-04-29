Feature: On calling POST FI Fetch request API, verify that on responding with invalid FI KeyMaterial object for FI
  fetch request, FI fetch failure is communicated to FIU SPOC.

  Scenario: 2025_1 Set Post FI request response on Mock server. Ask user to do POST FI request for pre
  generated consent to mock AA. Check that the FI request is received at Mock AA. Set the FI Fetch
  response on Mock with invalid Crypto Algo for KeyMaterial object. Send the FI notification in READY status.
  Wait fo 2 seconds and check that the FI Fetch request is received at mock server. Ask the user the error
  message for data fetch is communicated. Verify that the FI fetch failure is communicated to FIU SPOC.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the FI fetch failure is communicated to FIU SPOC

  Scenario: 2025_2 Set Post FI request response on Mock server. Ask user to do POST FI request for pre
  generated consent to mock AA. Check that the FI request is received at Mock AA. Set the FI Fetch
  response on Mock with invalid Curve for KeyMaterial object. Send the FI notification in READY status.
  Wait fo 2 seconds and check that the FI Fetch request is received at mock server. Ask the user the error
  message for data fetch is communicated. Verify that the FI fetch failure is communicated to FIU SPOC.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the FI fetch failure is communicated to FIU SPOC

  Scenario: 2025_3 Set Post FI request response on Mock server. Ask user to do POST FI request for pre
  generated consent to mock AA. Check that the FI request is received at Mock AA. Set the FI Fetch
  response on Mock with invalid expiry date format for KeyMaterial object. Send the FI notification in READY status.
  Wait fo 2 seconds and check that the FI Fetch request is received at mock server. Ask the user the error
  message for data fetch is communicated. Verify that the FI fetch failure is communicated to FIU SPOC.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the FI fetch failure is communicated to FIU SPOC

  Scenario: 2025_4 Set Post FI request response on Mock server. Ask user to do POST FI request for pre
  generated consent to mock AA. Check that the FI request is received at Mock AA. Set the FI Fetch
  response on Mock with expiry date in expiry date format for KeyMayerial object. Send the FI notification in READY status.
  Wait fo 2 seconds and check that the FI Fetch request is received at mock server. Ask the user the error
  message for data fetch is communicated. Verify that the FI fetch failure is communicated to FIU SPOC.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the FI fetch failure is communicated to FIU SPOC

  Scenario: 2025_5 Set Post FI request response on Mock server. Ask user to do POST FI request for pre
  generated consent to mock AA. Check that the FI request is received at Mock AA. Set the FI Fetch
  response on Mock with Random public key for KeyMaterial object. Send the FI notification in READY status.
  Wait fo 2 seconds and check that the FI Fetch request is received at mock server. Ask the user the error
  message for data fetch is communicated. Verify that the FI fetch failure is communicated to FIU SPOC.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the FI fetch failure is communicated to FIU SPOC

  Scenario: 2025_6 Set Post FI request response on Mock server. Ask user to do POST FI request for pre
  generated consent to mock AA. Check that the FI request is received at Mock AA. Set the FI Fetch
  response on Mock with Integer value for public key for KeyMaterial object. Send the FI notification in READY status.
  Wait fo 2 seconds and check that the FI Fetch request is received at mock server. Ask the user the error
  message for data fetch is communicated. Verify that the FI fetch failure is communicated to FIU SPOC.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the FI fetch failure is communicated to FIU SPOC

  Scenario: 2025_7 Set Post FI request response on Mock server. Ask user to do POST FI request for pre
  generated consent to mock AA. Check that the FI request is received at Mock AA. Set the FI Fetch
  response on Mock with Integer value for nounce for KeyMaterial object. Send the FI notification in READY status.
  Wait fo 2 seconds and check that the FI Fetch request is received at mock server. Ask the user the error
  message for data fetch is communicated. Verify that the FI fetch failure is communicated to FIU SPOC.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the FI fetch failure is communicated to FIU SPOC

  Scenario: 2025_8 Set Post FI request response on Mock server. Ask user to do POST FI request for pre
  generated consent to mock AA. Check that the FI request is received at Mock AA. Set the FI Fetch
  response on Mock with Random nounce value which is not used to generate Encrypted FI for KeyMaterial object. Send the FI notification in READY status.
  Wait fo 2 seconds and check that the FI Fetch request is received at mock server. Ask the user the error
  message for data fetch is communicated. Verify that the FI fetch failure is communicated to FIU SPOC.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the FI fetch failure is communicated to FIU SPOC
