Feature: On calling FIP and FIU Notifications Flow API, verify that on user linking a
  new account in AA app,discover, link and token link APIs of FIP is invoked correctly.

  Scenario: 1038_1 On calling FIP and FIU Notifications Flow API,generate a random  customerId,
  ask the user to register the generated  customerId and discover the accounts in the mock FIP
  server in AA app & confirm, validate if a proper discover account request is received in mock
  FIP, ask the user to link a particular account & confirm, validate if a proper link account
  request is received in the mock FIP, generate a random OTP and ask the user to use that to
  complete the linking in the AA app and confirm and finally validate if a proper link token
  request with the correct OTP is received in mock FIP.
    Given Calling the "FIP and FIU Notifications" Flow API
    When  FIP and FIU Notifications API, action is performed
    Then  Verify that a proper account discover request is received by mock FIP
    And   Verify that a proper account link request is received by mock FIP
    And   Verify that a proper account link token request with correct OTP is received by mock FIP
