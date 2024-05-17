Feature:On calling All APIs, verify that on requesting consent with all FITypes, AA is able to facilitate consent
  approval and retrieval of FI data for FIU.

  Scenario: 5007_1 On calling All APIs, follow the below steps:
  1. Set the response for account discover, link and token link APIs in mock FIP with one account for all FITypes.
  2. Generate a random  customerId and OTP.
  3. Ask the user to register the generated customerId, link all the discovered accounts using the generated OTP in
  mock FIP in AA app and confirm.
  4. Validate whether the account discover, link and token link request is received in the mock FIP as per the
  instructions in the step-3.
  5. Set POST consent response in FIP mock server.
  6. Set consent notification response in FIU mock server.
  7. Send a valid consent request for all FIType as mock FIU.
  8. Ask the user to select all linked account from mock FIP, approve the consent and confirm.
  9. Send a valid consent handle to receive APPROVED status as mock FIU.
  10. Validate that a consent notification with active status is received in mock FIU.
  11. Send a consent fetch request as mock FIU and validate the consent details and signature.
  12. Validate that a consent POST request is received in mock FIP with correct consent details.
  13. Set a valid FI response in mock FIP.
  14. Send a FI request to AA as mock FIU.
  15. Set the FI fetch response with random encryptedFI data in mock FIP for all the accounts.
  16. Set Fi notification response in FIU mock server.
  17. Send a FI ready notification to AA as mock FIP.
  18. Wait to receive FI notification in mock FIU.
  19. Send a FI fetch request as mock FIU and validate that the same encrypted FI data is received correctly for each
  account.
    Given Calling the All APIs
    When  Full Floow action is performed
    Then  Verify that AA is able to facilitate consent approval and retrival of FI data for FIU
