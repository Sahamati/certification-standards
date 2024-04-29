Feature: On calling FIP and FIU Notifications Flow API, verify that on user approving
  the consent, AA is posting the generated consent to the respective FIP.

  Scenario: 1034_1 On calling FIP and FIU Notifications Flow API, Use the pre-linked user
  details from settings,set the Post consent response on mock server, send a valid consent
  request, ask the user to approve the consent & confirm, send a valid consent handle,
  send a consent fetch request and then get the POST /Consent request received on the mock
  FIP application.
    Given Calling the "FIP and FIU Notifications" Flow API
    When  FIP and FIU Notifications API, action is performed
    Then  Verify that the field of Version contains the version of NBFC-AA Ecosystem API that is currently
  supported
    And   Verify the consentId is a valid UUID and is different from the one received in the AA consent
  fetch request
    And   Verify that the status displayed is ACTIVE
    And   Verify that the createTimestamp is sent within time consent POST request and current time
    And   Verify that the ConsentDetail object fields are matching the values sent in the consent GET request
    And   Verify that the consentDetailDigitalSignature is the proper signature as per the specification
    And   Verify that the consentUse object is matching the ConsentUse received in the consent GET request
