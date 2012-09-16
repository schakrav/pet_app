When /^I go to the application root$/ do
  visit root_path
end

Then /^I should see "(.*?)"$/ do |message|
  page.should have_content message
end

When /^I go to the about page$/ do
  visit about_path
end

When /^I go to the contact page$/ do
  visit contact_path
end

When /^I go to the privacy page$/ do
  visit privacy_path
end
