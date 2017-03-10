Feature: As a visitor.
   in order to talk with a friend
   I would like to compose and send a message

Background:
Given the following users exist
| name  | email             | password     |
| felix | felix@telia.com   | fisk1234     |
| fabbe | fabian@telia.com  | fabbe1234    |


   Scenario: If i send a message
      Given I am logged in as "felix"
      And I am on the index page
      And I click "Inbox"
      And I click "Compose"
      And I select "fabbe" from "Recipients"
      And I fill in "Subject" with "subject"
      And I fill in "Type your message here" with "Message"
      And I click "Send Message"
      And I click "Logout"
      And I am logged in as "fabbe"
      And I am on the index page
      And I click "Inbox"
      Then "fabbe" should have "1" message
