Feature:On calling All APIs, verify that on requesting consent with allowed combinations,
  AA is able to facilitate the consent approval and retrieval of FI data for FIU.

  Scenario: 5006_1 On calling All APIs, follow the below steps:
  Try variations from step-5
  1. Set the response for account discover, link and token link APIs in mock FIP.
  2. Generate a random  customerId and OTP.
  3. Ask the user to register the generated customerId, link a particular account of DEPOSIT FIType using the generated
  OTP in mock FIP in AA app & confirm.
  4. Validate whether the account discover, link and token link request is received in the mock FIP as per the
  instructions in the step-3.
  5. Set Post consent response in FIP mock server.
  6. Set consent notification response in FIU mock server.
  7. Send a valid consent request for DEPOSIT FIType as mock FIU.
  8. Ask the user to select the single linked account from mock FIP, approve the consent and confirm.
  9. Send a valid consent handle to receive APPROVED status as mock FIU.
  10. Validate if a consent notification with active status is received in mock FIU.
  11. Send a consent fetch request as mock FIU and validate the consent details and signature.
  12. Validate if a consent POST request is received in mock FIP with correct consent details.
  13. Set a valid FI response in mock FIP.
  14. Send a FI request to AA as mock FIU.
  15. Set the FI fetch response with random encryptedFI data in mock FIP.
  16. Set Fi notification response in FIU mock server.
  17. Send a FI ready notification to AA as mock FIP.
  18. Wait to receive FI notification in mock FIU.
  19. Send a FI fetch request as mock FIU and validate that the same encrypted FI data is received.
  Variations:
  1. Try all possible consent modes
  2. Try all possible purpose codes
  3. Try all DataLife units with value 0 to 4
  4. Try all possible consent types combinations
  5. Try all Frequency units with value 1 to 4
  6. Try all DataFilter type and operator combinations
    Given Calling the All APIs
    When  Full Floow action is performed
    Then  Verify that AA is able to facilitate the consent approval and retrival of FI data for FIU
