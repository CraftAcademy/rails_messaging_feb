Given(/^I am on the welcome page$/) do
  visit welcome_index_path
end

Then(/^I should be on inbox page$/) do
  visit mailbox_inbox_path
end
