When("admin user is created") do
  @user = User.create!({
             :name => "Aca",
             :email => "test@test.com",
             :password => "genije76",
             :password_confirmation => "genije76",
             :roles => "site_admin"
           })
end

When("user is created") do
  @user = User.create!({
             :name => "Alex",
             :email => "agolubovicnn@gmail.com",
             :password => "123456",
             :password_confirmation => "123456",
           })
end

When("I click on login link") do
  click_on "Login"
end

When("I am on login page") do
  visit new_user_session_path
end

When("I fill regular user {string} and {string}") do |string, string2|
  fill_in "Email", with: "agolubovicnn@gmail.com"
  fill_in "Password", with: "123456"
  click_button "Log in"
end

When("I fill in the {string} and {string}") do |string, string2|
  fill_in "Email", with: "test@test.com"
  fill_in "Password", with: "genije76"
  click_button "Log in"
end

When("I fill in invalid {string} and {string}") do |string, string2|
  fill_in "Email", with: "test1@test.com"
  fill_in "Password", with: "test1234"
  click_button "Log in"
end

Then("I should see Success") do
  expect(page).to have_content("Signed in successfully.", wait: 15)
end

Then("I should see Fail") do
  expect(page).to have_content("Invalid Email or password.", wait: 15)
end
