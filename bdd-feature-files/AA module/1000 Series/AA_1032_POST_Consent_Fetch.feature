Feature: On calling POST Consent Fetch Flow API, Verify that on sending consent
  fetch request for a consent that is associated to a deregistered user, consent with
  REVOKED status is received.

  Scenario: 1032_1 On calling POST Consent Fetch Flow API, generate a random  customerId,
  ask the user to register the same to AA, link 2 accounts from same FIP of same FIType
  and confirm.set Post consent response on mock server, Then send a valid consent request for
  that FIType, ask the user to approve the consent for both accounts, send a consent handle
  request to receive APPROVED status and try the following, Set delink API response on mock FIP,
  Set consent/notification response on FIP anf FIU mock server, ask the user to delink one account
  & confirm and then send the consent fetch request and then Verify that success response is received.
    Given Calling the "POST /Consent/fetch" request API
    When  POST action is performed
    Then  Verify that the response code 200 is received
    And   Verify that the response status is 'REVOKED'
