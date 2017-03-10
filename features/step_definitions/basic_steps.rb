Given(/^I am on the index page$/) do
  visit root_path
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Given(/^I click "([^"]*)"$/) do |button|
  click_link_or_button button
end

Then(/^I fill in "([^"]*)" with "([^"]*)"$/) do |title, content|
  fill_in title, with: content
end

Then(/^show me the page$/) do
  save_and_open_page
end

Given(/^I select "([^"]*)" from "([^"]*)"$/) do |option, select|
  select option, from: select
end
