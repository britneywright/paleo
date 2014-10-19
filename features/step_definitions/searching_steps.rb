Given /^there is a Food$/ do
  FactoryGirl.build(:food)
end

Given(/^I am on (.+)$/) do |page_name|
  visit '/'
end

When /^I fill in "(.*?)" with "(.*?)"$/  do |field, food|
  fill_in field, :with => food
  click_button "Search"
end

When /^I select "(.*?)"$/  do |food|
  @gif = FactoryGirl.create(:gif)
  click_link food
end

Then /^page should have "(.*?)" gif$/ do |truthy|
  Gif.truthiness(truthy) 
end