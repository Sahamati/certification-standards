Feature: On calling POST FI request API, verify that the FI request is received at AA is valid FI request.

  Scenario: 2001_1 Ask the user to raise FI request in MOCK AA for pre generated consent, check that the FI
  request is received at AA. Validate the FI request with respect to pre generated consent details.
    Given Calling the "POST /FI/Request" Flow API
    When  POST action is performed
    Then  Verify that the field of Version contains the version of NBFC-AA Ecosystem API that currently supported.
    Then Response code should be 200
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the FROM FI Date Range is smaller than TO FI Date Range and both the date formats are in
         correct date format
    And   Verify that the consentId is the valid consent id
    And   Verify that the digitalSignature is the Valid signature
    And   Verify that the Key Material is not expired
    And   Verify that the Key mayerial curve and Algorithm is valid
    And   Verify that the nounce is in 32 bytes string
