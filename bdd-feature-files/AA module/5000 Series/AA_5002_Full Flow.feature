Feature:On calling All APIs, verify that on consent requested to user currently with no accounts linked, user is able
  to link account, approve consent and FIU is able to retrieve the FI data successfully.

  Scenario: 5002_1 On calling All APIs, follow the below steps:
  1. Generate a random  customerId.
  2. Ask the user to register the generated customerId and confirm.
  3. Set the response for account discover, link and token link APIs in mock FIP.
  4. Set Post consent response in FIP mock server.
  5. Set consent notification response in FIU mock server.
  6. Send a valid consent request for DEPOSIT FIType as mock FIU.
  7. Generate an OTP and ask the user to link a particular account of mock FIP using the generated OTP in AA app,
  approve the consent and confirm.
  8. Validate that the account discover, link and token link request are received in the mock FIP as per the
  instructions in the step-5.
  9. Send a valid consent handle to receive APPROVED status as mock FIU.
  10. Validate that a consent notification with active status is received in mock FIU.
  11. Send a consent fetch request as mock FIU and validate the consent details and signature.
  12. Validate that a consent POST request is received in mock FIP with correct consent details.
  13. Set a valid FI response in mock FIP.
  14. Send a FI request to AA as mock FIU.
  15. Set the FI fetch response with random encryptedFI data in mock FIP.
  16. Set Fi notification response in mock server.
  17. Send a FI ready notification to AA as mock FIP.
  18. Wait to receive FI notification in mock FIU.
  19. Send a FI fetch request as mock FIU and validate that the same encrypted FI data is received.
    Given Calling the All APIs
    When  Full Floow action is performed
    Then  Verify that FIU is able to retrive the FI data successfully
