Feature:On calling All APIs, Verify that on consent requested to user operating with a two accounts in one FIP and three
  accounts in other FIP of three different FIType, FIU is able to retrieve the FI data successfully from all
  five accounts.

  Scenario: 5003_1 On calling All APIs, follow the below steps:
  1. Set the response for account discover, link and token link APIs in regular mock FIP and alternate mock FIP.
  Regular FIP with 1 account in DEPOSIT and 1 account in RECURRING_DEPOSIT. Alternate mock FIP with 2 accounts in
  DEPOSIT and 1 account in TERM_DEPOSIT.
  2. Generate a random  customerId and two OTPs.
  3. Ask the user to register the generated customerId, link all the accounts mentioned in step-1 using the generated
  OTP in regular and alternate mock FIP in AA app and confirm.
  4. Validate whether the account discover, link and token link request is received in the regular and alternate mock
  FIP as per the instructions in the step-3.
  5. Set Post consent response in FIP mock server.
  6. Set consent notification response in FIU mock server.
  7. Send a valid consent request for DEPOSIT, TERM_DEPOSIT and RECURRING_DEPOSIT FIType as mock FIU.
  8. Ask the user to select all five account from mock FIP, approve the consent and confirm.
  9. Send a valid consent handle to receive APPROVED status as mock FIU.
  10. Validate that a consent notification with active status is received in mock FIU.
  11. Send a consent fetch request as mock FIU and validate the consent details and signature.
  12. Validate that a consent POST request is received in both regular and alternate mock FIP with respective consent.
  details and consentId is different for all 3 consents.
  13. Set a valid FI response in regular and alternate mock FIP.
  14. Send a FI request to AA as mock FIU.
  15. Set the FI fetch response with random encryptedFI data in regular and alternate mock FIP.
  16. Set  Fi notification response in FIU mock server.
  17. Send a FI ready notification to AA as regular and alternate mock FIP.
  18. Wait to receive FI notification in mock FIU.
  19. Send a FI fetch request as mock FIU and validate if the same encrypted FI data is received for all accounts
  exact as passed from the FIPs.
    Given Calling the All APIs
    When  Full Floow action is performed
    Then  Verify that FI data successfully from all five accounts
