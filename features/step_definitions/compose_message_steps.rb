Given(/^I am on the inbox page$/) do
  visit  mailbox_inbox_path
end

Then(/^"([^"]*)" should have "([^"]*)" message$/) do |name, mail_count|
  receiver = User.where(name: name).first
  expect(receiver.mailbox.inbox.count).to eq mail_count.to_i
end



