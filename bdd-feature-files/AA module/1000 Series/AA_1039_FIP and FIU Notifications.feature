Feature: On calling FIP and FIU Notifications Flow API, verify that on user de-linking
  an account in AA app, de-link API of FIP is invoked correctly.

  Scenario: 1039_1 On calling FIP and FIU Notifications Flow API, generate a random  customerId,
  ask the user to register the generated  customerId and link two accounts from regular mock FIP
  and three accounts from alternate mock FIP & confirm, ask the user to deregister the  customerId
  from AA & confirm and finally validate if delink requests are received by regular and
  alternate mock FIP for the respective linked accounts.
    Given Calling the "FIP and FIU Notifications" Flow API
    When  FIP and FIU Notifications API, action is performed
    Then  Verify that a de-link request is received by mock FIP for the delinked account
