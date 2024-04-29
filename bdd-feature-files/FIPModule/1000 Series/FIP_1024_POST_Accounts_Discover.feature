Feature: On Calling POST Account discovery API with valid customer details and check the txnid, traceablity,
  API version and timestamp.

  Scenario: 1024_1 On Calling POST Account discovery with valid customer details and check the txnid traceablit,
  API version and timestamp.
    Given Calling the "POST /Accounts/discover" Flow API
    When  POST action is performed
    Then  Verify that the Response code 200 is displayed
    And   Verify that the field of Version contains the version of NBFC-AA Ecosystem API that currently supported.
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
