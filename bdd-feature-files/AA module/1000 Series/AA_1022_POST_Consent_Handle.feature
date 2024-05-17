Feature: On calling POST Consent Handle request API,Verify that on sending consent
  handle request for consent that is approved and later account is delinked by the
  user, response with consent status APPROVED is received.

  Scenario: 1022_1 On calling POST Consent Handle request API,generate a random customerId,
  ask the user to register the same to AA, link 2 accounts from same FIP of same
  FIType and confirm. Set Post consent response on Mock FIP, then send a valid consent
  request for that FIType, ask the user to approve the consent for both accounts,
  send a consent handle request to receive APPROVED status and try the following,Ask the
  user to delink one account & confirm and then send the consent handle request and then
  Verify that the success response is received.
    Given Calling the "POST /Consent/handle" Flow API
    When  POST action is performed
    Then  Verify that the response code 200 is received
    And   Verify that the ConsentStatus.status is 'APPROVED'

  Scenario: 1022_2 On calling POST Consent Handle request API,generate a random  customerId,
  ask the user to register the same to AA, link 2 accounts from same FIP of same FIType and
  confirm. Set Post consent response on Mock FIP, then send a valid consent request for that
  FIType, ask the user to approve the consent for both accounts,send a consent handle request
  to receive APPROVED status and try the following, Ask the user to delink the second account
  & confirm and then send the consent handle request and then Verify that the success response
  is received.
    Given Calling the "POST /Consent/handle" Flow API
    When  POST action is performed
    Then  Verify that the response code 200 is received
    And   Verify that the ConsentStatus.status is 'APPROVED'
