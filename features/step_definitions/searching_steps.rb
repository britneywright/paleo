# Given /^there is a Food$/ do
#   puts Food.all.inspect
# end

Given(/^I am on (.+)$/) do |page_name|
  visit '/'
end

When /^I fill in "(.*?)" with "(.*?)"$/  do |field, food|
  fill_in field, :with => food
end

Then /^show me the page$/ do
   save_and_open_page
end

When /^I select "(.*?)"$/  do |food|
  click_link food
end

Then /^page should have "(.*?)" gif$/ do |truthy|
  Gif.truthiness(truthy) 
end

Then /^no food is found$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I am suggested "(.*?)" and "(.*?)"$/ do |food1, food2|
  expect(page).to have_content food1
  expect(page).to have_content food2
end