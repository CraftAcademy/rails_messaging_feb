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
  Then I am on the inbox page
  And I should see "felix" count "0"
  And I send a mail from "felix" to "fabbe"
  Given I am logged in as "fabbe"
  Given I am on the welcome page
  And I click "Inbox"
  Then I am on the inbox page
  Then I should have "1" messages
  And I click "View"
  Then I should see "Lorem ipsum..."
