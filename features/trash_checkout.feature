Feature: As a visitor.
  So that I can remove my message.


  Background:
    Given the following users exist
      | name  | email           | password     |
      | felix | felix@telia.com | fisk1234     |

  Scenario: As I move a message to trash
    Given I am logged in as "felix"
    And I am on the index page
    And I click "Inbox"
    And I click "Compose"
    And I select "felix" from "Recipients"
    And I fill in "Subject" with "subject"
    And I fill in "Type your message here" with "Message"
    And I click "Send Message"
    And I should see "Your message was successfully sent!"
    And I click "Sent"
    And I should see "felix"
    And I click "View"
    And I click "Move to trash"
    And I click "Trash"
    Then I should see "felix"
