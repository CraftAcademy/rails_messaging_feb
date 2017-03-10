Feature:  As a user
  So that I can view my recieved messages.
  I would like to see messages in my inbox.

Background:
  Given the following users exist
    | name   | email            | password     |
    | felix  | felix@telia.com  | fisk1234     |
    | fabbe  | fabian@telia.com | fabbe1234    |

Scenario: If I am logged in
  Given I am logged in as "felix"
  Given I am on the welcome page
  And I click "Inbox"
  Then I should be on inbox page
  And I send a mail from "fabbe" to "felix"
  Then I should have "1" messages
