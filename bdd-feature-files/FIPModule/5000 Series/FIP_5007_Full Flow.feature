Feature:On calling DELETE Accounts Discover APIs, Set the Account or link or notification response on
  Mock server. Send the Account link request, wait for account link notification to Mock AA
  server (Direct authentication). Set the Consent notification response in mock server, and consent post
  request. Set the FI Notification on Mock server. Send the FI request, wait for FI ready notification. Send the
  FI fetch request and finally delink the account request in sequence for three account users and check that
  all APIs are responding with success response and Verify that the response code of all APIs is 200.

  Scenario: 5007_1 On calling DELETE Accounts Discover APIs, send the account full flow requests with first
  account of three account user for FIType DEPOSIT and Verify that the HTTP status code 200 is received in response.
    Given Calling the DELETE Accounts Discover APIs
    When  DELETE Accounts Discover APIs action is performed
    Then  Verify that the reponse code of all APIs is 200
    And   Verify that the Account link response AuthenticatorType is DIRECT(If DIRECT is not specified in
  supported AuthenticatorType settings, skip this test case by stating the reason
    And   Verify that the Account link notification response status is LINKED
    And   Verify that the FI data matches the FIType schema
    And   Verify that the Account delink response status is DELINKED
    And   Verify that the RefNumber received in account link response is not repeated when variations are tried
    And   Verify that the linkRefNumber received in account link notification response is not repeated when variations are tried
    And   Verify that the sessionId received in FI response is not repeated when variations are tried
    And   Verify that the cryptoAlgo recevied in FI fetch is the valid Algo

  Scenario: 5007_2 On calling DELETE Accounts Discover APIs, send the account full flow requests with two accounts
  of three account user for FIType DEPOSIT and Verify that the HTTP status code 200 is received in response.
    Given Calling the DELETE Accounts Discover APIs
    When  DELETE Accounts Discover APIs action is performed
    Then  Verify that the reponse code of all APIs is 200
    And   Verify that the Account link response AuthenticatorType is DIRECT(If DIRECT is not specified in
  supported AuthenticatorType settings, skip this test case by stating the reason)
    And   Verify that the Account link notification response status is LINKED
    And   Verify that the FI data matches the FIType schema
    And   Verify that the Account delink response status is DELINKED
    And   Verify that the RefNumber received in account link response is not repeated when variations are tried
    And   Verify that the linkRefNumber received in account link notification response is not repeated when variations are tried
    And   Verify that the sessionId received in FI response is not repeated when variations are tried
    And   Verify that the cryptoAlgo recevied in FI fetch is the valid Algo

  Scenario: 5007_3 On calling DELETE Accounts Discover APIs, send the account full flow requests with three accounts
  of three account user for FIType DEPOSITand Verify that the HTTP status code 200 is received in response.
    Given Calling the DELETE Accounts Discover APIs
    When  DELETE Accounts Discover APIs action is performed
    Then  Verify that the reponse code of all APIs is 200
    And   Verify that the Account link response AuthenticatorType is DIRECT(If DIRECT is not specified in
  supported AuthenticatorType settings, skip this test case by stating the reason)
    And   Verify that the Account link notification response status is LINKED
    And   Verify that the FI data matches the FIType schema
    And   Verify that the Account delink response status is DELINKED
    And   Verify that the RefNumber received in account link response is not repeated when variations are tried
    And   Verify that the linkRefNumber received in account link notification response is not repeated when variations are tried.
    And   Verify that the sessionId received in FI response is not repeated when variations are tried
    And   Verify that the cryptoAlgo recevied in FI fetch is the valid Algo

  Scenario: 5007_4 On calling DELETE Accounts Discover APIs, send the account full flow requests with first account
  of three account user for FIType TERM-DEPOSIT and Verify that the HTTP status code 200 is received in response.
    Given Calling the DELETE Accounts Discover APIs
    When  DELETE Accounts Discover APIs action is performed
    Then  Verify that the reponse code of all APIs is 200
    And   Verify that the Account link response AuthenticatorType is DIRECT(If DIRECT is not specified in
  supported AuthenticatorType settings, skip this test case by stating the reason)
    And   Verify that the Account link notification response status is LINKED
    And   Verify that the FI data matches the FIType schema
    And   Verify that the Account delink response status is DELINKED
    And   Verify that the RefNumber received in account link response is not repeated when variations are tried
    And   Verify that the linkRefNumber received in account link notification response is not repeated when variations are tried
    And   Verify that the sessionId received in FI response is not repeated when variations are tried
    And   Verify that the cryptoAlgo recevied in FI fetch is the valid Algo

  Scenario: 5007_5 On calling DELETE Accounts Discover APIs, send the account full flow requests with two accounts
  of three account user for FIType TERM-DEPOSIT and Verify that the HTTP status code 200 is received in response.
    Given Calling the DELETE Accounts Discover APIs
    When  DELETE Accounts Discover APIs action is performed
    Then  Verify that the reponse code of all APIs is 200
    And   Verify that the Account link response AuthenticatorType is DIRECT(If DIRECT is not specified in
  supported AuthenticatorType settings, skip this test case by stating the reason)
    And   Verify that the Account link notification response status is LINKED
    And   Verify that the FI data matches the FIType schema
    And   Verify that the Account delink response status is DELINKED
    And   Verify that the RefNumber received in account link response is not repeated when variations are tried
    And   Verify that the linkRefNumber received in account link notification response is not repeated when variations are tried
    And   Verify that the sessionId received in FI response is not repeated when variations are tried
    And   Verify that the cryptoAlgo recevied in FI fetch is the valid Algo

  Scenario: 5007_6 On calling DELETE Accounts Discover APIs, send the account full flow requests with three accounts
  of three account user for FIType TERM-DEPOSIT and Verify that the HTTP status code 200 is received in response.
    Given Calling the DELETE Accounts Discover APIs
    When  DELETE Accounts Discover APIs action is performed
    Then  Verify that the reponse code of all APIs is 200
    And   Verify that the Account link response AuthenticatorType is DIRECT(If DIRECT is not specified in
  supported AuthenticatorType settings, skip this test case by stating the reason)
    And   Verify that the Account link notification response status is LINKED
    And   Verify that the FI data matches the FIType schema
    And   Verify that the Account delink response status is DELINKED
    And   Verify that the RefNumber received in account link response is not repeated when variations are tried
    And   Verify that the linkRefNumber received in account link notification response is not repeated when variations are tried
    And   Verify that the sessionId received in FI response is not repeated when variations are tried
    And   Verify that the cryptoAlgo recevied in FI fetch is the valid Algo

  Scenario: 5007_7 On calling DELETE Accounts Discover APIs, send the account full flow requests with first account
  of three account user for FIType RECURRING_DEPOSIT and Verify that the HTTP status code 200 is received in response.
    Given Calling the DELETE Accounts Discover APIs
    When  DELETE Accounts Discover APIs action is performed
    Then  Verify that the reponse code of all APIs is 200
    And   Verify that the Account link response AuthenticatorType is DIRECT(If DIRECT is not specified in
  supported AuthenticatorType settings, skip this test case by stating the reason)
    And   Verify that the Account link notication response status is LINKED
    And   Verify that the FI data matches the FIType schema
    And   Verify that the Account delink response status is DELINKED
    And   Verify that the RefNumber received in account link response is not repeated when variations are tried
    And   Verify that the linkRefNumber received in account link notification response is not repeated when variations are tried
    And   Verify that the sessionId received in FI response is not repeated when variations are tried
    And   Verify that the cryptoAlgo recevied in FI fetch is the valid Algo

  Scenario: 5007_8 On calling DELETE Accounts Discover APIs, send the account full flow requests with two accounts
  of three account user for FIType RECURRING_DEPOSIT and Verify that the HTTP status code 200 is received in response.
    Given Calling the DELETE Accounts Discover APIs
    When  DELETE Accounts Discover APIs action is performed
    Then  Verify that the reponse code of all APIs is 200
    And   Verify that the Account link response AuthenticatorType is DIRECT(If DIRECT is not specified in
  supported AuthenticatorType settings, skip this test case by stating the reason)
    And   Verify that the Account link notification response status is LINKED
    And   Verify that the FI data matches the FIType schema
    And   Verify that the Account delink response status is DELINKED
    And   Verify that the RefNumber received in account link response is not repeated when variations are tried
    And   Verify that the linkRefNumber received in account link notification response is not repeated when variations are tried
    And   Verify that the sessionId received in FI response is not repeated when variations are tried
    And   Verify that the cryptoAlgo recevied in FI fetch is the valid Algo

  Scenario: 5007_9 On calling DELETE Accounts Discover APIs, send the account full flow requests with three accounts
  of three account user for FIType RECURRING_DEPOSIT and Verify that the HTTP status code 200 is received in response.
    Given Calling the DELETE Accounts Discover APIs
    When  DELETE Accounts Discover APIs action is performed
    Then  Verify that the reponse code of all APIs is 200
    And   Verify that the Account link response AuthenticatorType is DIRECT(If DIRECT is not specified in
  supported AuthenticatorType settings, skip this test case by stating the reason)
    And   Verify that the Account link notification response status is LINKED
    And   Verify that the FI data matches the FIType schema
    And   Verify that the Account delink response status is DELINKED
    And   Verify that the RefNumber received in account link response is not repeated when variations are tried
    And   Verify that the linkRefNumber received in account link notification response is not repeated when variations are tried
    And   Verify that the sessionId received in FI response is not repeated when variations are tried
    And   Verify that the cryptoAlgo recevied in FI fetch is the valid Algo
