Feature: On calling POST FI fetch Request API, verify that on sending FI fetch request
  when consent is paused,error response is received.

  Scenario: 2029_1 On calling POST FI fetch Request API, Use the pre-linked user details from
  settings and do the following steps:
  1. Set Post consent response in FIP mock server.
  2. Send a valid consent request
  3. Set consent notification response in FIU mock server.
  4. Ask the user to approve the consent & confirm
  5. Send a valid consent handle to receive APPROVED status
  6. Send a consent fetch request
  7. Set a valid FI response in mock FIP
  8. Send a FI request to AA
  9. Set a valid FI fetch response in mock FIP
  10.Set FI notification response on FIU mock server.
  11.Send a FI ready notification to AA
  12. Wait to receive FI ready notification in mock FIU
  13. Ask the user to pause the consent & confirm
  14. Send a FI fetch request
    Given Calling the "POST /FI/fetch" Flow Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 403
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is ConsentPaused
    And   Verify that the version is supported version

  Scenario: 2029_2 On calling POST FI fetch Request API, use the pre-linked user details from
  settings, and follow below steps,(Also try a variation to perform step-10 before step-8 and
  avoid step-9)
  1. Set the Post consent response in FIP mock server.
  2. Send a valid consent request.
  3. Set the consent notification response in FIU mock server.
  4. Ask the user to approve the consent and confirm.
  5. Send a valid consent handle to receive APPROVED status.
  6. Send a consent fetch request.
  7. Set a valid FI response in mock FIP.
  8. Set the FI notification response on FIU mock server.
  9. Send a FI request to AA.
  10. Send a FI ready notification to AA.
  11. Wait to receive FI ready notification in mock FIU.
  12. Ask the user to pause the consent and confirm.
  13. Send a FI fetch request.
    Given Calling the "POST /FI/fetch" Flow Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 403
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is ConsentPaused
    And   Verify that the version is supported version
