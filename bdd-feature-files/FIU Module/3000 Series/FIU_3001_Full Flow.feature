Feature: On calling Callback API, verify that on consent received from FIU, the success response is
  received from all the stages.

  Scenario: 3000_1 Generate Random customerId.Set the response for consent post, consent handle with
  consentStatus as PENDING in Mock server. Ask the user to generate consent for for random customerId.
  Check that the consent post request received at AA and validate that the consent request is for random
  user id. Set consent get request in Mock server. Send consent notification to FIU as status Active and
  check that the success response is received.Set the FI request response on Mock server for above consent.
  Ask the user to send FI request to AA Mock server.Check that the valid FI request is received at Mock server
  Set the Fi Fetch response on mock server.Send the valid FI notification to FIU and check that the success
  response is received.Check that the FI fetch request is received at Mock server and validate the request.
  Ask the user that he is able to view the data in FIU.
    Given Given Calling the Full Flow APIs
    When  Callback API request is performed
    Then  Verify that the success response is received from all the stages
