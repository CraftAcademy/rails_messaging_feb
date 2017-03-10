Feature: As a visitor.
  So that I can use the service.
  I would like to be able to go to login page and login on my account.

Background:
Given the following users exist
| name  | email             | password     |
| felix | felix@telia.com   | fisk1234     |
| fabbe | fabian@telia.com  | fabbe1234    |

Scenario: As I login
   Scenario: If I am logged in
   Given I am logged in as "felix"
   And I am on the index page
   And I click "Inbox"
   And I click "Compose"
   And I select "fabbe" from "Recipients"
   And I fill in "Subject" with "subject"
   And I fill in "Type your message here" with "Message"
   Then I click "Send Message"

