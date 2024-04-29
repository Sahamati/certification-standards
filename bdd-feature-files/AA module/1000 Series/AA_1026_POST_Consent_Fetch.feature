Feature: On calling POST Consent Fetch Flow API, Verify that on sending a valid
  consent fetch request, success response is received.

  Scenario: 1026_1 On calling POST Consent Fetch Flow API, Use the pre-linked user details
  from settings, send one valid consent request and then Pick one account of the pre-linked
  user for the requested consent FIType from mock server, set the Post consent response
  on mock server, ask the user to approve the consent with that single account & confirm,
  send consent handle request and finally send the consent fetch request and then Verify
  that the success response is received.
    Given Calling the "POST /Consent/fetch" Flow API
    When  POST action is performed
    Then  Verify that the response code 200 is received
    And   Verify that the field of Version contains the version of NBFC-AA Ecosystem API that is currently
  supported
    And   Verify the consentId is a valid UUID string
    And   Verify that the status displayed is ACTIVE
    And   Verify that the create Timestamp is sent within time consent POST request and current time
    And   Verify that the signedConsent has the valid JWS signed consent and ConsentDetail object is
  extractable from JWS body
    And   Verify that the ConsentDetail object fields are matching the values sent in the consent POST request
    And   Very that the ConsentDetail.DataConsumer.type is FIU
    And   Verify that the ConsentDetail.DataProvider.type is AA
    And   Verify that the ConsentDetail.Accounts are matching the approved accounts
    And   Verify that the ConsentUse.count is 0
    And   ConsentDetail.DataProvider.id is the id of AA server

  Scenario: 1026_2 On calling POST Consent Fetch Flow API, Use the pre-linked user details
  from settings, send one valid consent request and then Pick two accounts of the pre-linked
  user for the requested consent FIType from mock server, set the Post consent response on
  mock server, ask the user to approve the consent with those two accounts & confirm,
  send consent handle request and finally send the consent fetch request and then Verify
  that the success response is received.
    Given Calling the "POST /Consent/fetch" Flow API
    When  POST action is performed
    Then  Verify that the response code 200 is received
    And   Verify that the field of Version contains the version of NBFC-AA Ecosystem API that is currently
  supported
    And   Verify the consentId is a valid UUID string
    And   Verify that the status displayed is ACTIVE
    And   Verify that the createTimestamp is sent within time consent POST request and current time
    And   Verify that the signedConsent has the valid JWS signed consent and ConsentDetail object is
  extractable from JWS body
    And   Verify that the ConsentDetail object fields are matching the values sent in the consent POST request
    And   Very that the ConsentDetail.DataConsumer.type is FIU
    And   Verify that the ConsentDetail.DataProvider.type is AA
    And   Verify that the ConsentDetail.Accounts are matching the approved accounts
    And   Verify that the ConsentUse.count is 0
    And   ConsentDetail.DataProvider.id is the id of AA server
