Given /^the following foods:$/  do |table|
  table.map_headers! {|header| header.downcase.to_sym }
  table.map_column!(:name) {|name| Food.find_by_name(name) }
  table.map_column!(:paleo) {|paleo| Food.find_by_name(paleo) }
  table.map_column!(:slug) {|slug| Food.find_by_name(slug) }
end

Given(/^I am on (.+)$/) do |page_name|
  visit '/'
end

When /^I fill in "(.*?)" with "(.*?)"$/  do |field, food|
  fill_in field, :with => food
  click_button "Search"
end

When /^I select "(.*?)"$/  do |food|
  click_link food
  Food.inspect 
end

Then /^page should have "(.*?)" gif$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end