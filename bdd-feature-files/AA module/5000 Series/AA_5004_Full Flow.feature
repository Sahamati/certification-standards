Feature:On calling All APIs, verify that on FIP operating with DIRECT authentication type, AA is able to link FIP and
  facilitate the FI data retrieval for FIU.

  Scenario: 5004_1 On calling All APIs, follow the below steps:
  1. Set the response for account discover API, link API with DIRECT authenticationType in mock FIP.
  2. Generate a random  customerId.
  3. Ask the user to register the generated customerId, link a particular account of DEPOSIT FIType in mock FIP in
  AA app and confirm.
  4. Validate whether the account discover and link is received in the mock FIP as per the instructions in the step-3.
  5. Send a valid account link notification request as mock FIP.
  6. Send a valid consent request for DEPOSIT FIType as mock FIU.
  7. Set POST consent response in FIP mock server.
  8. Ask the user to select the single linked account from mock FIP, approve the consent and confirm.
  9. Set consent notification response in FIU mock server.
  10. Send a valid consent handle to receive APPROVED status as mock FIU.
  11. Validate that a consent notification with active status is received in mock FIU.
  12. Send a consent fetch request as mock FIU and validate the consent details and signature.
  13. Validate that a consent POST request is received in mock FIP with correct consent details.
  14. Set a valid FI response in mock FIP.
  15. Send a FI request to AA as mock FIU.
  16. Set the FI fetch response with random encryptedFI data in mock FIP.
  17. Set FI notification response in FIU mock server.
  18. Send a FI ready notification to AA as mock FIP.
  19. Wait to receive FI notification in mock FIU.
  20. Send a FI fetch request as mock FIU and validate that the same encrypted FI data is received.
    Given Calling the All APIs
    When  Full Floow action is performed
    Then  Verify that AA is able to link FIP and facilitate the FI data retrival for FIU
