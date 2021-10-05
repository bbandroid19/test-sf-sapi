Feature: Testing the API's

  Scenario: Get Salesforce Accounts
    Given I create a new request with https://apix-salesforce.us-e2.cloudhub.io/api/ service
    And I add the accounts endpoint to the service
    And I send the GET request to the service
    Then I get the 200 response code

  Scenario: Get Salesforce Account By AccountId
    Given I create a new request with https://apix-salesforce.us-e2.cloudhub.io/api/ service
    And I add the accounts/0015g000002YSBLAA4 endpoint to the service
    And I send the GET request to the service
    Then I get the 200 response code
