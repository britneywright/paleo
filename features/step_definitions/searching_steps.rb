Given /^there is content in the database$/ do
  Food.find_or_create_by(name: 'Hamburgers', paleo: false, slug: 'hamburgers')
  Food.find_or_create_by(name: 'banana', paleo: true, slug: 'banana')
  Food.find_or_create_by(name: 'bacon', paleo: true, slug: 'bacon')
  Gif.find_or_create_by(name: 'Friends Yes', truthy: true, image_url: 'yes.gif')
  Gif.find_or_create_by(name: 'Emma Stone No', truthy: false, image_url: 'no.gif')
end

Given(/^I am on (.+)$/) do |page_name|
  visit root_path
end

When /^I fill in "(.*?)" with "(.*?)"$/  do |field, food|
  fill_in field, :with => food
end

And /^I select "(.*?)"$/  do |food|
  click_link food
end

Then /^page should have "(.*?)" gif$/ do |truthy|
  Gif.random_for(truthy) 
end

Then /^no food is found$/ do
  page.has_content?("What is that?")
end

Then /^I am suggested "(.*?)" and "(.*?)"$/ do |food1, food2|
  expect(page).to have_content food1
  expect(page).to have_content food2
end