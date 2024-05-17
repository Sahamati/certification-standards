Feature:On calling POST Consent Flow API, verify the Consent request received at AA is the valid
        consent request.

  Scenario: 1001_1 On calling the POST Consent Flow API, ask the user to raise a consent
  request to MOCK AA and verify that the consent request received at AA is the valid consent request.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the field of Version contains the version of NBFC-AA Ecosystem API that currently supported
    Then  Response code should be 200
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Consent Expiry date is greater than the Consent Start Date and both the date formats are
          in correct date format
    And   Verify that all the values of Enum fields are valid
    And   Verify that the FROM FI Date Range is smaller than TO FI Date Range and both the date formats are in
          correct date format
    And   Verify that the HTTP status code 200 in received in Consent request
