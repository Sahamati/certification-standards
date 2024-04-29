Feature: On Calling POST Account discovery API with valid customer id, all supported FITypes and
  customer identifiers of all three types and check if the received discovered account details are matching.

  Scenario: 1031_1 Pick single user who has 3 accounts in all supported FITypes and try one case for each
  combination of all 9 customer identifiers with sampling rate of 2. Avoid combinations which has no strong
  identifer. On Calling POST Account discovery with STRONG identifier MOBILE and WEAK identifier PAN for a
  user within all supported FIType for each combination of only strong identifiers with sampling rate of 2.
    Given Calling the "POST /Accounts/discover" Flow API
    When  POST action is performed
    And   Verify that the HTTP status code 200 in received
    Then  Verify that Number of items in the list should match the count of accounts of the user
    And   Verify that FIType, accType and accRefNumber for each should match extactly the test user data
  from settings
    And   Verify All maskedAccNumber in the list should be masked properly
    And   accRefNumber should not repeat in list


  Scenario: 1031_2 Pick single user who has 3 accounts in all supported FITypes and try one case for each
  combination of all 9 customer identifiers with sampling rate of 2. Avoid combinations which has no strong
  identifer. On Calling POST Account discovery with STRONG identifier MOBILE and ANCILLARY identifier DOB for
  a user within all supported FIType for each combination of only strong identifiers with sampling rate of 2.
    Given Calling the "POST /Accounts/discover" Flow API
    When  POST action is performed
    And   Verify that the HTTP status code 200 in received
    Then  Verify that Number of items in the list should match the count of accounts of the user
    And   Verify that FIType, accType and accRefNumber for each should match extactly the test user data
  from settings
    And   Verify All maskedAccNumber in the list should be masked properly
    And   accRefNumber should not repeat in list

  Scenario: 1031_3 Pick single user who has 3 accounts in all supported FITypes and try one case for each
  combination of all 9 customer identifiers with sampling rate of 2. Avoid combinations which has no strong
  identifer. On Calling POST Account discovery with STRONG identifier MOBILE and ANCILLARY identifier CRN for
  a user within all supported FIType for each combination of only strong identifiers with sampling rate of 2.
    Given Calling the "POST /Accounts/discover" Flow API
    When  POST action is performed
    And   Verify that the HTTP status code 200 in received
    Then  Verify that Number of items in the list should match the count of accounts of the user
    And   Verify that FIType, accType and accRefNumber for each should match extactly the test user data
  from settings
    And   Verify All maskedAccNumber in the list should be masked properly
    And   accRefNumber should not repeat in list

  Scenario: 1031_4 Pick single user who has 3 accounts in all supported FITypes and try one case for each
  combination of all 9 customer identifiers with sampling rate of 2. Avoid combinations which has no strong
  identifer. On Calling POST Account discovery with STRONG identifier MOBILE and ANCILLARY identifier PPAN
  for a user within all supported FIType for each combination of only strong identifiers with sampling
  rate of 2.
    Given Calling the "POST /Accounts/discover" Flow API
    When  POST action is performed.
    And   Verify that the HTTP status code 200 in received
    Then  Verify that Number of items in the list should match the count of accounts of the user
    And   Verify that FIType, accType and accRefNumber for each should match extactly the test user data
  from settings
    And   Verify All maskedAccNumber in the list should be masked properly
    And   accRefNumber should not repeat in list

  Scenario: 1031_5 Pick single user who has 3 accounts in all supported FITypes and try one case for each
  combination of all 9 customer identifiers with sampling rate of 2. Avoid combinations which has no strong
  identifer. On Calling POST Account discovery with STRONG identifier MOBILE and ANCILLARY identifier Others
  for a user within all supported FIType for each combination of only strong identifiers with sampling
  rate of 2.
    Given Calling the "POST /Accounts/discover" Flow API
    When  POST action is performed.
    And   Verify that the HTTP status code 200 in received
    Then  Verify that Number of items in the list should match the count of accounts of the user
    And   Verify that FIType, accType and accRefNumber for each should match extactly the test user data
  from settings
    And   Verify All maskedAccNumber in the list should be masked properly
    And   accRefNumber should not repeat in list
