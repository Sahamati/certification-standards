Feature: On calling FIP and FIU Notifications Flow API, verify that on user de-registering
  from AA, de-link the API of FIP for all linked accounts is invoked.

  Scenario: 1040_1 On calling FIP and FIU Notifications Flow API, generate a random customerId.
  Ask the user to register the generated  customerId and link two accounts from regular mock FIP and
  three accounts from alternate mock FIP and confirm,set the response for delink api on regular and
  alternate mock FIP, Ask the user to deregister the customerId from AA and confirm. Finally
  validate that the de-link requests are received by regular and alternate mock FIP for
  the respective linked accounts.
    Given Calling the "FIP and FIU Notifications" Flow API
    When  FIP and FIU Notifications API, action is performed
    Then  Verify that the de-link request is received by the regular mock FIP for its two accounts
    And   Verify that the de-link request is received by the alternate mock FIP for its three accounts
