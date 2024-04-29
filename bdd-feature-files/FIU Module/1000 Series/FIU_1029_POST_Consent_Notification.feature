Feature: On calling POST Consent Notification API, verify that on responding with ConsentStatus as PENDING for
  consent handle request, success response is received for valid consent notification request.

  Scenario: 1029_1 Set the Post Consent response on mock server. Set the consent handle with ConsentStatus as
  PENDING in mock server. Ask the user to raise consent request for mock AA. Check that the Post consent and
  consentHandle request is received at mock server. Send valid consent notification request.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 200 is displayed
    And   Verify that the field of Version contains the version of NBFC-AA Ecosystem API that currently supported
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the txnid id is same as the txnid from request
    And   Verify that the Response is displayed as 'OK'
