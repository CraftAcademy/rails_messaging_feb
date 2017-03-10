Given(/^I am on the welcome page$/) do
  visit welcome_index_path
end

Then(/^I am on the inbox page$/) do
  visit mailbox_inbox_path
end

Then(/^I send a mail from "([^"]*)" to "([^"]*)"$/) do |name1, name2|
  @user = User.find_by(name: name1)
  @receiver = User.find_by(name: name2)
  @user.send_message(@receiver, 'Lorem ipsum...', 'Subject')
end

Then(/^I should have "([^"]*)" messages$/) do |expected_count|
  count = @receiver.mailbox.inbox.count
  expect(count).to eq expected_count.to_i
end
