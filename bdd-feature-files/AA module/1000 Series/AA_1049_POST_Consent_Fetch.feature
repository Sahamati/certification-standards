Feature: On calling POST Consent Fetch Flow API, Verify that on sending consent fetch
  request with Client API key of alternate FIU , consent with error response is received.

  Scenario: 1049_1 On calling POST Consent Fetch Flow API,Use the pre-linked user details
  from settings,set the Post consent response on mock server, send a valid consent request,
  ask the user to approve the consent & confirm, send a valid consent handle to receive APPROVED
  status, set consent/notification response on FIP and FIU mock server, ask the user to approve
  consent & confirm and then send a consent fetch request  with client api key header of
  alternate FIU and Verify that the error response is received.
    Given Calling the "POST /Consent/fetch" Flow API
    When  POST action is performed
    Then  Verify that the reponse code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest/SignatureDoesNotMatch
    And   Verify that the version is supported version
