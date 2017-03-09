Feature:  As a user
  So that I can view my recieved messages.
  I would like to see messages in my inbox.

Background:
  Given the following users exist
    | name  | email           | password     |
    | felix | felix@telia.com | fisk1234     |

Scenario: If I am logged in
  Given I am logged in as "felix"
  Given I am on the welcome page
  Then show me the page
  And I click "Inbox"
  Then I should be on inbox page
