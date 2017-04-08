Given /^I am not logged in$/ do
  if user_signed_in?
    sign_out :user
  end
end

Given /^I am logged in$/ do
  if !user_signed_in
    @user = User.first
    sign_in :user
  end
end

When /^I access the homepage$/ do
  visit root_path
end

Then /^I should see the guest homepage$/ do
  visit root_path
end

When /^I log in$/ do
  @user = User.first
  sign_in :user
end

Then /^I should see the topscore$/ do
  visit root_path
end
