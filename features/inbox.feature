Feature:  As a user
  So that I can view my recieved messages.
  I would like to see messages in my inbox.

Scenario: If I am logged in
  Given I am logged in as "felix"
  Given I am on the welcome index page
  And I click "Inbox"
  Then I should be on inbox page
