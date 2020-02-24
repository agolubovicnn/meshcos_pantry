When("I go to the homepage") do
  visit root_path
end

Then("I should see the welcome message") do
  expect(page).to have_content("Welcome", wait: 15)
end

When("I should see About me link") do
  expect(page).to have_content("About Me", wait: 15)
end

When("I click the provided link") do
  click_on "About Me", class: "btn btn-lg btn-secondary"
end

Then("I should see About Me page") do
  visit about_me_path
end
