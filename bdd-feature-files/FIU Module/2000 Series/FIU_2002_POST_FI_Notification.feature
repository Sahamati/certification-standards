Feature: On calling POST FI request API, verify that on sending valid FI Notification, success response is received.

  Scenario: 2002_1 Ask the user to send the valid FI request to Mock AA for pre generated consent. Check if FI
  request is received at Mock AA and send the valid FI notification request. Verify that the HTTP status code 200 is
  displayed in response.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Response code should be 200
    Then  Verify that the field of Version contains the version of NBFC-AA Ecosystem API that currently supported
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the FROM FI Date Range is smaller than TO FI Date Range and both the date formats are in
         correct date format
    And   Verify that the consent id is the valid consent id
    And   Verify that the digitalSignature is the Valid signature
    And   Verify that the Key Material is not expired
    And   Verify that the Key mayerial curve and Algorithm is valid
    And   Verify that the nounce is in 32 bytes string
