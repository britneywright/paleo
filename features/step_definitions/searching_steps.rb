# Given /^the following foods:$/  do |table|
#   table.map_headers! {|header| header.downcase.to_sym }
#   table.map_column!(:name) {|name| Food.find_by_name(name) }
#   table.map_column!(:paleo) {|paleo| Food.find_by_name(paleo) }
#   table.map_column!(:slug) {|slug| Food.find_by_name(slug) }
#   table.hashes.each do |row|
#     Food.create(row)  
#   end
# end

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